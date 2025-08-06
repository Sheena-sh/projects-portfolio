package server;

import wordyApp.*;

import java.io.File;
import java.io.FileNotFoundException;
import java.lang.InterruptedException;
import java.sql.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class ServerImpl extends WordyPOA {

    private static Connection con;

    private static ArrayList<RoomGame> wordyListOfGameRooms = new ArrayList<>();

    static ConcurrentHashMap<String, Integer> internalRoomTimer = new ConcurrentHashMap<>();
    static ConcurrentHashMap<String, Integer> inBetweenRoundTimer = new ConcurrentHashMap<>();
    static ConcurrentHashMap<String, String> roomAndRandomLetters = new ConcurrentHashMap<>();

    private final Map<String, Player> playerMap = new ConcurrentHashMap<>();
    private final Map<String, RoomGame> roomMap = new ConcurrentHashMap<>();

    private Player sharedRoundWinner;

    public static long globalTimeLeft;
    public static long globalBreakTimeLeft;
    private CountDownLatch latch;
    private Lock lock = new ReentrantLock();

    public static void sqlCon() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wordy?user=root&password");
        } catch (SQLException e) {
            System.out.println("Connection to SQL server not established. Please try again~");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Player login(String username, String password) throws IncorrectCredentials, AlreadyLoggedIn {
        sqlCon(); // Establish the database connection

        String query = "SELECT * FROM wordy.users WHERE username = ? AND password = ?";
        try (PreparedStatement stmt = con.prepareStatement(query, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE)) {
            stmt.setString(1, username);
            stmt.setString(2, password);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) { // Login successful
                    int idUser = rs.getInt("idUsers");
                    String dbUsername = rs.getString("username");
                    String dbPassword = rs.getString("password");
                    boolean loggedIn = rs.getBoolean("loggedIn");
                    boolean isInGame = rs.getBoolean("isInGame");

                    if (loggedIn) { // User is already logged in
                        throw new AlreadyLoggedIn("User is already logged in");
                    }
                    else if (username.equals(dbUsername) && password.equals(dbPassword) && !loggedIn) {
                        query = "UPDATE wordy.users SET loggedIn = ? WHERE idUsers = ?";
                        try (PreparedStatement updateStmt = con.prepareStatement(query, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE)) {
                            updateStmt.setBoolean(1, true);
                            updateStmt.setInt(2, idUser);
                            updateStmt.executeUpdate();
                        }
                        System.out.println("User " + username + " has logged in successfully!");

                        // Create a Player object with the retrieved username
                        Player player = new Player();
                        player.username = dbUsername;
                        player.password = dbPassword;
                        player.loggedIn = true;
                        player.isInGame = isInGame;
                        player.roundsWon = 0;
                        playerMap.put(dbUsername.toLowerCase(), player); // Add the newly created player to the map

                        assert player != null : "Player object is null";

                        return player;
                    } else {
                        // Incorrect credentials
                        throw new IncorrectCredentials("Invalid username or password");
                    }
                } else {
                    // User not found
                    throw new IncorrectCredentials("Invalid username or password");
                }
            }
        } catch (DatabaseException | SQLException e) {
            throw new DatabaseException("Error occurred while authenticating user: " + e.getMessage());
        }
    }

    /**
     * GETS THE TOP 5 USERS WHO HAS THE MOST WINS [DESC,LIMIT 5]
     */
    @Override
    public LeaderBoard[] showLeaderBoard() {
        sqlCon();
        try {
            List<LeaderBoard> leaderBoards = new java.util.ArrayList<>();

            Statement statement = con.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT username, wins FROM wordy.leaderboard ORDER BY wins DESC LIMIT 5");

            int count = 1;
            int prevCount = -1;

            while (resultSet.next()) {
                String resultUsername = resultSet.getString("username");
                int resultWins = resultSet.getInt("wins");

                //assigns rank based on wins
                if (resultWins != prevCount) {
                    count = leaderBoards.size() + 1;
                }

                leaderBoards.add(new LeaderBoard(count, resultUsername, resultWins));
                //count++;
                prevCount = resultWins;
            }

            return leaderBoards.toArray(new wordyApp.LeaderBoard[0]);

        } catch (DatabaseException | SQLException sqlException) {
            throw new server.DatabaseException("Database error");
        }
    }

    /**
     * GETS THE TOP 5 LONGEST WORDS IN THE SQL [DESC, LIMIT 5]
     */

    @Override
    public wordyApp.LongestWordWinner[] top5longestWords() {
        sqlCon();
        try (Statement statement = con.createStatement();
             ResultSet resultSet = statement.executeQuery("SELECT username, words, length FROM wordy.longestwords ORDER BY length DESC LIMIT 5")) {

            java.util.List<wordyApp.LongestWordWinner> longestWinnerList = new java.util.ArrayList<>();

            int rank = 1;
            int prevlength = -1;

            while (resultSet.next()) {
                String resultUsername = resultSet.getString("username");
                String resultWord = resultSet.getString("words");
                int resultLength = resultSet.getInt("length");

                // assigns rank based on word length
                if (resultLength != prevlength) {
                    rank = longestWinnerList.size() + 1;
                }

                longestWinnerList.add(new LongestWordWinner(resultLength, resultUsername, resultWord, rank));
                prevlength = resultLength;
            }

            return longestWinnerList.toArray(new LongestWordWinner[0]);
        } catch (SQLException e) {
            throw new RuntimeException(e);

            // Handle the exception or log an error
        }
    }

    /**
     * ADDS EVERY INPUTTED WORD BY THE USER EVERY ROUND TO THE LONGESTWORD TABLE IN SQL
     **/
    public void addWordToSQL (String player, String word){

        String query = "INSERT INTO wordy.longestwords (words, username,length) VALUES (?,?,?)";

        try {
            java.sql.PreparedStatement statement = con.prepareStatement(query);
            statement.setString(1, word);
            statement.setString(2, player);
            statement.setInt(3,word.length());
            statement.executeUpdate(); // execute the prepared statement

        } catch (java.sql.SQLException sqlException) {
            sqlException.printStackTrace();
        }
    }

    public void addWinToSQL(String player) {
        String selectQuery = "SELECT wins FROM wordy.leaderboard WHERE username = ?";
        String insertQuery = "INSERT INTO wordy.leaderboard (username, wins) VALUES (?, ?)";
        String updateQuery = "UPDATE wordy.leaderboard SET wins = ? WHERE username = ?";

        try {
            // Check if the user exists in the database
            PreparedStatement selectStatement = con.prepareStatement(selectQuery);
            selectStatement.setString(1, player);
            ResultSet resultSet = selectStatement.executeQuery();

            if (resultSet.next()) {
                // User already exists, add a win to the current wins
                int currentWins = resultSet.getInt("wins");
                int updatedWins = currentWins + 1;

                PreparedStatement updateStatement = con.prepareStatement(updateQuery);
                updateStatement.setInt(1, updatedWins);
                updateStatement.setString(2, player);
                updateStatement.executeUpdate();
            } else {
                // User does not exist, create a new row with the user and a win
                PreparedStatement insertStatement = con.prepareStatement(insertQuery);
                insertStatement.setString(1, player);
                insertStatement.setInt(2,1);
                insertStatement.executeUpdate();
            }

            resultSet.close();
        } catch (SQLException sqlException) {
//            sqlException.printStackTrace();
        }
    }

    @Override
    public synchronized void setRandomLetters(RoomGame roomGame) {
        String vowels = "AEIOU";
        String consonants = "BCDFGHJKLMNPQRSVWXYZ";
        StringBuilder sb = new StringBuilder();
        Random randomizer = new Random();

        int numOfVowels = randomizer.nextInt(3) + 5;
        for (int i = 0; i < numOfVowels; i++) {
            sb.append(vowels.charAt(randomizer.nextInt(vowels.length())));
        }

        while (sb.length() < 17) {
            char randLetter = consonants.charAt(randomizer.nextInt(consonants.length()));
            if (sb.indexOf(String.valueOf(randLetter)) == -1)
                sb.append(randLetter);
        }

        String letters = sb.toString();
        char[] charArray = letters.toCharArray();

        for (int i = charArray.length - 1; i > 0; i--) {
            int index = randomizer.nextInt(i + 1);
            char temp = charArray[index];
            charArray[index] = charArray[i];
            charArray[i] = temp;
        }

        // Set the random letters for the current game room
        roomGame.roomRLetters = new String(charArray);
        roomAndRandomLetters.put(roomGame.gameRoomID, roomGame.roomRLetters);
        //System.out.println("The random letters originally set from setRandomLetters(): " + roomGame.roomRLetters);
    }

    @Override
    public synchronized String getRoomRandomLetters(String roomIDToGetRLetters) {
        String randLetters = "";
        for (ConcurrentHashMap.Entry<String, String> thisMap : roomAndRandomLetters.entrySet()){
            if (thisMap.getKey().equalsIgnoreCase(roomIDToGetRLetters)) {
                randLetters = thisMap.getValue();
            }
        }
        //System.out.println("The room random letters read from getRoomRandomLetters(): " + randLetters);
        return randLetters;
    }

    public String[] getValidWords(String randomLetters) {
        Set<Character> letterSet = new HashSet<>();
        for (char letter : randomLetters.toCharArray()) {
            letterSet.add(Character.toLowerCase(letter));
        }

        List<String> validWords = new ArrayList<>();

        try (Scanner scanner = new Scanner(new File("src/server/res/words.txt"))) {
            while (scanner.hasNext()) {
                String currentLine = scanner.nextLine();
                if (canFormWord(currentLine.toLowerCase(), letterSet)) {
                    validWords.add(currentLine);
                }
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }

        return validWords.toArray(new String[0]);
    }

    public boolean canFormWord(String word, Set<Character> letterSet) {
        Set<Character> remainingLetters = new HashSet<>(letterSet);
        for (char c : word.toCharArray()) {
            if (!remainingLetters.contains(c)) {
                return false;
            }
            remainingLetters.remove(c);
        }
        return true;
    }

    @Override
    public synchronized void startTenSecondTimer(int timeMilliSeconds) {
        try {
            latch = new CountDownLatch(1); // Initialize the latch with a count of 1
            ScheduledExecutorService scheduler = Executors.newSingleThreadScheduledExecutor();
            List<Future<Integer>> futures = new ArrayList<>(timeMilliSeconds);
            for (int i = timeMilliSeconds; i > 0; i--) {
                int j = i;
                futures.add(scheduler.schedule(() -> j, timeMilliSeconds - i + 1, TimeUnit.SECONDS));
            }

            for (Future<Integer> future : futures) {
                try {
                    globalTimeLeft = future.get() - 1;
                } catch (java.util.concurrent.ExecutionException e) {
                    throw new RuntimeException(e);
                }
                System.out.print("Time elapsed: " + (globalTimeLeft) + " seconds\n");
            }
            System.out.println("--End of timer--");
            scheduler.shutdown();
            latch.countDown(); // Release the latch to indicate that the timer has completed
        }
        catch (InterruptedException ie) {
            ie.getMessage();
        }
    }

    @Override
    public synchronized void startRoundTimer(RoomGame room, int timeSeconds) {
        Timer ekko = new Timer();
        int roundTime = 10;
        boolean roomInRound = false;
        AtomicInteger timeLeft;

        for (ConcurrentHashMap.Entry<String, Integer> thisMap : internalRoomTimer.entrySet()) {
            if (thisMap.getKey().equals(room.gameRoomID)) {
                roundTime = thisMap.getValue();
                roomInRound = true;
            }
        }

        if (roomInRound) {
            timeLeft = new AtomicInteger(roundTime);
        }
        else {
            timeLeft = new AtomicInteger(10);
        }
        //AtomicInteger timeLeft = new AtomicInteger(11);
        AtomicInteger finalTimeLeft = timeLeft;
        ekko.schedule(new TimerTask() {
            @Override
            public void run() {
                int updatedTimeLeft = finalTimeLeft.decrementAndGet(); //11 - 1 = 10
                internalRoomTimer.put(room.gameRoomID, updatedTimeLeft);
                globalTimeLeft = updatedTimeLeft;
                System.out.println("Time left: " + getRoundTimer(room.gameRoomID));
                if (updatedTimeLeft == 0) {
                    inBetweenRoundTimer.put(room.gameRoomID, 5);
                    cancel();
                }
            }
        }, 1000, 1000); //executes code after a 1-second delay, counts down every second
    }

    @Override
    public synchronized void startBreakTimer(RoomGame room) {
        Timer breakTimer = new Timer();
        int breakTimeLeft = 6;
        boolean roomInBreak = false;
        AtomicInteger betweenRoundTime;

        for (ConcurrentHashMap.Entry<String, Integer> thisMap : inBetweenRoundTimer.entrySet()){
            if (thisMap.getKey().equals(room.gameRoomID)) {
                breakTimeLeft = thisMap.getValue();
                roomInBreak= true;
            }
        }
        if (roomInBreak) {
            betweenRoundTime = new AtomicInteger(breakTimeLeft);
        }
        else {
            betweenRoundTime = new AtomicInteger(6);
        }

        AtomicInteger finalBetweenRoundTime = betweenRoundTime;
        breakTimer.schedule(new TimerTask() {
            @Override
            public void run() {
                int updatedTimeLeft = finalBetweenRoundTime.decrementAndGet();
                inBetweenRoundTimer.put(room.gameRoomID, updatedTimeLeft);
                globalBreakTimeLeft = updatedTimeLeft;
                System.out.println("Time left: " + getBreakTimer(room.gameRoomID));
                if (updatedTimeLeft == 0) {
                    internalRoomTimer.put(room.gameRoomID, 10);
                    cancel();
                }
            }
        }, 1000, 1000);
    }

    @Override
    public synchronized long getRoundTimer(String roomID) {
        if (roomID.isEmpty()) {
            return globalTimeLeft;
        }

        else {
            int roundTime = 0;
            for (ConcurrentHashMap.Entry<String, Integer> thisMap : internalRoomTimer.entrySet()){
                if (thisMap.getKey().equals(roomID)) {
                    roundTime = thisMap.getValue();
                }
            }
            return roundTime;
        }
    }

    @Override
    public synchronized long getBreakTimer(String roomID) {
        if (roomID.isEmpty()) {
            return globalBreakTimeLeft;
        }

        else {
            int roundTime = 0;
            for (ConcurrentHashMap.Entry<String, Integer> thisMap : inBetweenRoundTimer.entrySet()){
                if (thisMap.getKey().equals(roomID)) {
                    roundTime = thisMap.getValue();
                }
            }
            return roundTime;
        }
    }

    @Override
    public long getTimeLeft() {
        return globalTimeLeft / 1000;
    }

    @Override
    public long calculateTimeLeft(long startTime, long timeOut) {
        // Start the timer
        // Calculate the remaining time
        long timeElapsed = System.currentTimeMillis() - startTime;
        return timeOut - timeElapsed;
        //System.out.println("Time remaining: " + remainingTime / 1000 + " seconds");

    }

    private String generateRoomID() {
        int ID_LENGTH = 5;
        String ID_CHARACTERS = "0123456789";
        Random random = new Random();
        StringBuilder stringBuilder = new StringBuilder();

        for (int i = 0; i < ID_LENGTH; i++) {
            int randomNumber = random.nextInt(ID_CHARACTERS.length());
            char randomChar = ID_CHARACTERS.charAt(randomNumber);
            stringBuilder.append(randomChar);
        }

        String roomIDNumber = stringBuilder.toString();
        return roomIDNumber;
    }

    @Override
    public synchronized void addRoom(String roomNumber, RoomGame roomGame) {
        try {
            sqlCon();
            System.out.println("Adding room: " + roomNumber);

            // Begin transaction
            con.setAutoCommit(false);

            // Acquire lock on the wordy.rooms table
            PreparedStatement lockStmt = con.prepareStatement("LOCK TABLES wordy.rooms WRITE");
            lockStmt.execute();

            // Check if room exists
            PreparedStatement selectStmt = con.prepareStatement("SELECT playerCount FROM wordy.rooms WHERE roomNumber = ?");
            selectStmt.setString(1, roomNumber);
            ResultSet result = selectStmt.executeQuery();

            if (result.next()) {
                // Room exists, update player count
//                int playerCount = result.getInt("playerCount");
//                playerCount++;
                int playerCount = roomPlayerCounter(roomGame);

                PreparedStatement updateStmt = con.prepareStatement("UPDATE wordy.rooms SET playerCount = ? WHERE roomNumber = ?");
                updateStmt.setInt(1, playerCount);
                updateStmt.setString(2, roomNumber);
                updateStmt.executeUpdate();

                System.out.println("Existing room found. Room Number: " + roomNumber + ", Player Count: " + playerCount);
            } else {
                // Room doesn't exist, insert new row
                PreparedStatement insertStmt = con.prepareStatement("INSERT INTO wordy.rooms (roomNumber, playerCount) VALUES (?, 1)");
                insertStmt.setString(1, roomNumber);
                insertStmt.executeUpdate();

                System.out.println("New room added. Room Number: " + roomNumber);
            }

            selectStmt.close();
            result.close();


            // Commit the transaction
            con.commit();

            // Release the lock
            PreparedStatement unlockStmt = con.prepareStatement("UNLOCK TABLES");
            unlockStmt.execute();

        } catch (SQLException e) {
            // Handle exceptions and rollback the transaction
            e.printStackTrace();
            try {
                con.rollback();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } finally {
            try {
                // Restore auto-commit mode and close the connection
                con.setAutoCommit(true);
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }


    @Override
    public void decreasePlayerCount(String roomNumber) {
        sqlCon(); // Establish the database connection
        try {
            PreparedStatement selectStmt = con.prepareStatement("SELECT playerCount FROM wordy.rooms WHERE roomNumber = ?");
            selectStmt.setString(1, roomNumber);
            ResultSet result = selectStmt.executeQuery();

            if (result.next()) {
                int playerCount = result.getInt("playerCount");
                playerCount--;

                PreparedStatement updateStmt = con.prepareStatement("UPDATE wordy.rooms SET playerCount = ? WHERE roomNumber = ?");
                updateStmt.setInt(1, playerCount);
                updateStmt.setString(2, roomNumber);
                updateStmt.executeUpdate();
            }

            result.close();
            selectStmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteRoom(String roomNumber) {
        sqlCon();
        try {
            PreparedStatement deleteStmt = con.prepareStatement("DELETE FROM wordy.rooms WHERE roomNumber = ?");
            deleteStmt.setString(1, roomNumber);
            int rowsAffected = deleteStmt.executeUpdate();

            if (rowsAffected > 0) {
                System.out.println("Room deleted successfully: " + roomNumber);
            } else {
                System.out.println("Room not found: " + roomNumber);
            }

            deleteStmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public synchronized int getPlayerCount(String roomNumber) {

        try {
            sqlCon(); // Establish the database connection
            PreparedStatement selectStmt = con.prepareStatement("SELECT playerCount FROM wordy.rooms WHERE roomNumber = ?");
            selectStmt.setString(1, roomNumber);
            ResultSet result = selectStmt.executeQuery();

            if (result.next()) {
                int playerCount = result.getInt("playerCount");
//                result.close();
//                selectStmt.close();
                return playerCount;
            }

            result.close();
            selectStmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return 0;

        // alternate
//        if (roomToCountPlayers == null || roomToCountPlayers.players == null) {
//            return 0;
//        }
//        int count = 0;
//        for (wordyApp.Player player : roomToCountPlayers.players) {
//            if (player != null) {
//                count++;
//            }
//        }
//        return count;

    }

    @Override
    public synchronized void updateResult(String roomgameID, String winner, int roundnumber) {
        try {
            sqlCon();
            // Check if the roomgameID, roundnumber, and winner already exist in the table
            String checkQuery = "SELECT COUNT(*) AS count FROM wordy.gameresults WHERE roomgameID = ? AND roundnumber = ? AND winner = ?";
            PreparedStatement checkStatement = con.prepareStatement(checkQuery);
            checkStatement.setString(1, roomgameID);
            checkStatement.setInt(2, roundnumber);
            checkStatement.setString(3, winner);
            ResultSet checkResultSet = checkStatement.executeQuery();
            checkResultSet.next();
            int count = checkResultSet.getInt("count");

            if (count > 0) {
                System.out.println("The game result already exists.");
            } else {
                // Prepare the SQL query for inserting a new row
                String insertQuery = "INSERT INTO wordy.gameresults(roomgameID, roundnumber, winner) VALUES (?, ?, ?)";

                // Prepare the statement and set the parameter values
                PreparedStatement insertStatement = con.prepareStatement(insertQuery);
                insertStatement.setString(1, roomgameID);
                insertStatement.setInt(2, roundnumber);
                insertStatement.setString(3, winner);

                // Execute the insert statement
                insertStatement.executeUpdate();
                System.out.println("Game result updated successfully.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("An error occurred while updating the game result.");
        }
    }

    @Override
    public String getWinner(String roomgameID, int roundnumber) {


        try {
            sqlCon();
            String query = "SELECT winner FROM wordy.gameresults WHERE roomgameID = ? AND roundnumber = ?";
            PreparedStatement statement = con.prepareStatement(query);
            statement.setString(1, roomgameID);
            statement.setInt(2, roundnumber);

            // Execute the query
            ResultSet resultSet = statement.executeQuery();

            // Check if a row was found
            if (resultSet.next()) {
                return resultSet.getString("winner");
            } else {
                return "";
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    private int roomPlayerCounter(RoomGame room) {
        if (room == null || room.players == null) {
            return 0;
        }
        int count = 0;
        for (wordyApp.Player player : room.players) {
            if (player != null) {
                count++;
            }
        }
        return count;
    }

    /**
     * Updates the Player object's attribute [isInGame] to its corresponding state in the SQL database
     * @param username - gets the player username to be changed
     * @param isInGame - gets the player isInGame to be changed to 'true/false'
     */
    @Override
    public void updatePlayerIsInGame(String username, boolean isInGame) {
        try {
            sqlCon();

            String updateSql = "UPDATE wordy.users SET isInGame = ? WHERE username = ?";
            PreparedStatement updateStatement = con.prepareStatement(updateSql);
            updateStatement.setBoolean(1, isInGame);
            updateStatement.setString(2, username);
            updateStatement.executeUpdate();
            updateStatement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public wordyApp.RoomGame play(wordyApp.Player player) throws wordyApp.NoPlayerJoined {
        RoomGame roomToJoin = null;

        // Check for pending wordy.rooms
        for (RoomGame r : wordyListOfGameRooms) {
            if (r.gameState.equals("pending")) {
                roomToJoin = r;
                break; // Found a pending room, no need to continue the loop
            }
        }

        if (roomToJoin == null) { // No pending wordy.rooms found, create a new room
            Word tempWord = new Word("", player);
            roomToJoin = new RoomGame();
            roomToJoin.gameRoomID = generateRoomID();
            roomToJoin.players = new wordyApp.Player[1];
            roomToJoin.players[0] = player;
            roomToJoin.roomRLetters = "";
            roomToJoin.submittedWords = new Word[1];
            roomToJoin.submittedWords[0] = tempWord;
            roomToJoin.roundsWonIncr = false;
            roomToJoin.winner = "";
            roomToJoin.gameState = "pending";
            roomMap.put(roomToJoin.gameRoomID, roomToJoin); // Add the newly created room to the map
            wordyListOfGameRooms.add(roomToJoin); // Add the newly created room to the list

            // Start the timer
            int timeMilliseconds = 11; // 10 seconds (It should start at ten and code does -1)
            startTenSecondTimer(timeMilliseconds);

            if (roomPlayerCounter(roomToJoin) < 2) { // if less than 2 players
                wordyListOfGameRooms.remove(roomToJoin);
                throw new NoPlayerJoined("No other players joined the room.");
            }
        }

        else { // Joining an existing room
            // Add the player to the existing room
            int indexToAddPlayer = roomPlayerCounter(roomToJoin);
            if (indexToAddPlayer >= roomToJoin.players.length) {
                wordyApp.Player[] newPlayers = new wordyApp.Player[indexToAddPlayer + 1];
                System.arraycopy(roomToJoin.players, 0, newPlayers, 0, roomToJoin.players.length);
                roomToJoin.players = newPlayers;
            }
            roomToJoin.players[indexToAddPlayer] = player;

            for (Player pl : roomToJoin.players) {
                String username = pl.username;
                updatePlayerIsInGame(username, true); // Update isInGame attribute for all players in the room
            }

        }

        synchronized (roomToJoin) {
            if (roomToJoin.gameState.equals("pending")) {
                try {
                    latch.await();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }

        roomToJoin.gameState = "inGame"; // Set the game state to "inGame" after the latch.await() call

        prepareGame(roomToJoin); // Prepare first round

        return roomToJoin;
    }

    public void prepareGame(RoomGame room) {
        System.out.println("New Room Game (" + room.gameRoomID + ")");
        System.out.println("With " + roomPlayerCounter(room) + " players: ");
        int index = 1;
        for (wordyApp.Player player : room.players) {
            System.out.println(index + ". " + player.username);
            index++;
        }

        //Prepare room's timer by placing it in the round handler hashmap where key = room value = time left
        internalRoomTimer.put(room.gameRoomID, 10);

        // Generate random letters for the current game room
        setRandomLetters(room);
        System.out.println(getRoomRandomLetters(room.gameRoomID));
        System.out.println("Random Letters set: " + getRoomRandomLetters(room.gameRoomID));

        System.out.println("Possible Words " + Arrays.toString(getValidWords(String.valueOf(getRoomRandomLetters(room.gameRoomID)))));
    }

    @Override
    public RoomGame nextRoundHandler(RoomGame room) {
        // Reset the flag for each round
        roomMap.get(room.gameRoomID).roundsWonIncr = false;

        // Clear submittedWords in the RoomGame object
        roomMap.get(room.gameRoomID).submittedWords = new Word[0];

        // Clear the random letters from the previous round
        room.roomRLetters = "";

        // Generate and set new random letters for the next round
        setRandomLetters(room);

        // Print the new set of random letters and possible words
        System.out.println("New Round (" + room.gameRoomID + ")" );
        System.out.println("New Random Letters set in nextRoundHandler(): " + getRoomRandomLetters(room.gameRoomID));
        System.out.println("Possible Words " + Arrays.toString(getValidWords(String.valueOf(getRoomRandomLetters(room.gameRoomID)))));

        return room;
    }

    @Override
    public synchronized boolean userEnteredWord(String wordPrompt, Player player, RoomGame currentRoom) {
        Word word = new Word(wordPrompt, player);

        try {
            // Check if the entered word is valid.
            if (isWordValid(word, player, currentRoom)) {
                RoomGame roomGameObj = roomMap.get(currentRoom.gameRoomID);
                if (roomGameObj != null) {
                    Word[] submittedWords = roomGameObj.submittedWords;
                    int numWords = submittedWords.length;

                    // Create a new array with increased size to accommodate the new word
                    Word[] newSubmittedWords = new Word[numWords + 1];
                    System.arraycopy(submittedWords, 0, newSubmittedWords, 0, numWords);

                    // Add the new word to the last index of the array
                    newSubmittedWords[numWords] = word;

                    // Update the submittedWords array in the RoomGame object
                    roomGameObj.submittedWords = newSubmittedWords;

                    System.out.println("Player " + player.username + " entered word: " + word.wordPrompt);
                    addWordToSQL(player.username, wordPrompt); //add the word to the sql

                    return true; // Word entered successfully
                } else {
                    System.out.println("RoomGame object not found in the map.");
                }
            }
        } catch (InvalidWord e) {
            System.out.println("Invalid word"); // Handle the exception
        }

        return false; // Word entry failed
    }

    /**
     * Checks if the word is valid.
     * Returns the Word object if the word is valid, false if otherwise.
     */
    public synchronized boolean isWordValid(Word word, Player player, RoomGame currentRoom) throws InvalidWord {
        boolean charLengthValid = false;
        boolean matchesGivenLetters = false;
        boolean wordMatchInTextFile = false;

        try {
            // Sets the player that entered the word
            word.wordOwner = player;
            System.out.println("Owner of the entered word: " + player.username);

            // Checks if the word has more than 5 letters
            if (word.wordPrompt.length() < 5) {
                System.out.println("[INVALID] Less than 5 letters: " + word.wordPrompt);
                throw new InvalidWord();
            }
            else {
                charLengthValid = true;
                System.out.println("[VALID] More than 5 letters: " + word.wordPrompt);
            }

            String randomLetters = getRoomRandomLetters(currentRoom.gameRoomID); // Stores current random letters for comparison
            String[] validWords = getValidWords(randomLetters); // Stores all the valid words from the text file for comparison

            // Check if the input word has the 17 letters
            if (doesWordContainLetters(word.wordPrompt, randomLetters)) {
                matchesGivenLetters = true;
            }

            // Check if the inputted word is in the valid words array
            for (String validWord : validWords) {
                if (validWord.equalsIgnoreCase(word.wordPrompt)) {
                    System.out.println("[VALID] Present in the dictionary: " + word.wordPrompt);
                    wordMatchInTextFile = true;
                    break;
                }
            }

            if (charLengthValid && matchesGivenLetters && wordMatchInTextFile) {
                return true;
            }
            else {
                return false;
            }
        }
        catch (Exception e) {
            throw new wordyApp.InvalidWord();
        }
    }

    public boolean doesWordContainLetters(String wordPrompt, String randomLetterArrays) {
        wordPrompt = wordPrompt.toLowerCase();
        randomLetterArrays = randomLetterArrays.toLowerCase();

        int[] letterCounts = new int[26];

        for (char letter : randomLetterArrays.toCharArray()) {
            if (Character.isLetter(letter)) {
                int index = letter - 'a';
                letterCounts[index]++;
            }
        }

        for (char letter : wordPrompt.toCharArray()) {
            if (Character.isLetter(letter)) {
                int index = letter - 'a';
                if (letterCounts[index] <= 0) {
                    return false;
                }
                letterCounts[index]--;
            }
        }

        return true;
    }

    @Override
    public  Player roundWinnerChecker(RoomGame room) throws NoWinner, TieResult {
        int maxWordLength = 0;
        Player roundWinner = null;
        boolean tie = false;

        lock.lock();
        try {
            RoomGame roomGameObj = roomMap.get(room.gameRoomID);
            if (roomGameObj == null) {
                System.out.println("RoomGame object not found in the map.");
                return null;
            }

            Player[] players = roomGameObj.players;
            Word[] submittedWords = roomGameObj.submittedWords;

            System.out.println("Submitted words:");
            for (Word word : submittedWords) {
                System.out.println(word.wordPrompt);
            }

            boolean anyPlayerSubmittedWord = false;
            for (Player player : players) {
                Word playerLongestWord = getPlayerLongestWord(player, submittedWords);

                if (!playerLongestWord.wordPrompt.isEmpty()) {
                    anyPlayerSubmittedWord = true;

                    if (playerLongestWord.wordPrompt.length() > maxWordLength) {
                        maxWordLength = playerLongestWord.wordPrompt.length();
                        roundWinner = player;
                        tie = false;
                    } else if (playerLongestWord.wordPrompt.length() == maxWordLength) {
                        tie = true;
                    }
                }
            }

            if (!anyPlayerSubmittedWord) {
                throw new NoWinner("No Winner.");
            } else if (tie) {
                throw new TieResult("Tie is detected.");
            } else if (roundWinner != null) {

                if (!roomGameObj.roundsWonIncr) {
                    sharedRoundWinner = playerMap.get(roundWinner.username.toLowerCase());
                    System.out.println("Round Winner: " + sharedRoundWinner.username);
                    sharedRoundWinner.roundsWon++;
                    roomGameObj.roundsWonIncr = true;
                }
                return roundWinner;
            }
        } finally {
            lock.unlock();
        }

        return null;
    }

    private Word getPlayerLongestWord(Player player, Word[] submittedWords) {
        Word longestWord = null;

        for (Word word : submittedWords) {
            if (word.wordOwner.username.equalsIgnoreCase(player.username)) {
                if (longestWord == null || word.wordPrompt.length() > longestWord.wordPrompt.length()) {
                    longestWord = word;
                }
            }
        }

        if (longestWord == null) {
            longestWord = new Word("", player);
        }

        System.out.println("Longest word for " + player.username + ": " + longestWord.wordPrompt);

        return longestWord;
    }

    @Override
    public boolean gameWinStateChecker(RoomGame room) {
        for (Player player : room.players) {
            Player currentPlayer = playerMap.get(player.username.toLowerCase());
            if (currentPlayer != null) {
                System.out.println("Checking rounds won for player: " + currentPlayer.username);
                System.out.println("Rounds won: " + currentPlayer.roundsWon);
                if (currentPlayer.roundsWon == 3) {
                    return true;
                }
            }
        }
        return false;
    }


//    // idk but i think we need it/ or nah, diretso logoff nlng
//    public void resetWon(RoomGame roomGame) {
//        Player player = null;
//        for (Player players : roomGame.players) {
//            Player currentPlayer = playerMap.get(players.username.toLowerCase());
//
//        }
//
//    }

    @Override
    public Player getGameWinner(RoomGame room) {
        Player gameWinner = null;

        for (Player player : room.players) {
            Player currentPlayer = playerMap.get(player.username.toLowerCase());
            if (currentPlayer != null && currentPlayer.roundsWon >= 3) {
                if (gameWinner == null || currentPlayer.roundsWon > gameWinner.roundsWon) {
                    gameWinner = currentPlayer;
                }
            }
        }

        if (gameWinner != null) { // Appending gameWinner to the RoomGame
            room.winner = gameWinner.username;
            System.out.println("Game Winner: " + gameWinner.username);
            addWinToSQL(gameWinner.username); // Call addWinToSQL method for the game winner
        } else {
            room.winner = ""; // Set winner as empty string if no game winner found
        }
        return gameWinner;
    }

    @Override
    public synchronized void finishGame(Player playerID, RoomGame room) {

            room.gameState = "finishing";

                updatePlayerIsInGame(playerID.username, false);
                playerID.roundsWon = 0;
                RoomGame gameRoom = roomMap.get(room.gameRoomID);

            sharedRoundWinner = playerMap.get(playerID.username.toLowerCase());

            sharedRoundWinner.roundsWon = 0;

                if (gameRoom != null) {
                    gameRoom.submittedWords = new Word[0];
                }

            wordyListOfGameRooms.remove(room);

            // Still don't know which is where yet; have to find out during implementation
            internalRoomTimer.clear();
            inBetweenRoundTimer.clear();

    }

    @Override
    public void logOffUser(String username) throws wordyApp.UserNotFound {
        try {
            sqlCon(); // Establish the database connection

            String query = "SELECT * FROM wordy.users WHERE username = ?";
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) { // User found
                boolean loggedIn = rs.getBoolean("loggedIn");

                if (loggedIn) { // User is logged in
                    int idUser = rs.getInt("idUsers"); // Gets the user ID
                    String updateQuery = "UPDATE wordy.users SET loggedIn = ? WHERE idUsers = ?";
                    PreparedStatement updateStmt = con.prepareStatement(updateQuery);
                    updateStmt.setBoolean(1, false);
                    updateStmt.setInt(2, idUser);
                    updateStmt.executeUpdate();
                    System.out.println("User " + username + " has logged out successfully!");
                } else {
                    System.out.println("User is not logged in.");
                }
            } else {
                throw new UserNotFound("User not found");
            }
        } catch (SQLException e) {
            System.err.println("Error occurred while logging out user: " + e.getMessage());
        } finally {
            try {
                if (con != null) {
                    con.close();
                }
            } catch (SQLException e) {
                System.err.println("Error occurred while closing the database connection: " + e.getMessage());
            }
        }
    }

}
