package client.gui;

import wordyApp.*;

import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.Clip;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.File;
import java.lang.InterruptedException;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Consumer;
import javax.swing.JFrame;
import javax.swing.border.LineBorder;

/*
 * class that connects and handle the server - client operations
 */
public class WordyGUI {

    JFrame window;
    JPanel titlePanel, startButtonPanel, leaderPanel, longestPanel, logoutButtonPanel, waitingPanel, winnerPanel, loserPanel, noWinnerPanel, tiePanel, gameWinnerPanel;
    static JLabel titleLabel, waitingLabel, timerLabel, winnerLabel, loserLabel, noWinnerLabel, tieLabel, gameWinnerLabel;
    JButton startButton, longestButton, leaderButton, logoutButton;
    ArrayList<String> validWords = new ArrayList<String>();
    JTextArea lettersDisplay;

    AtomicBoolean isRoundFinished, isGameFinished, notOnBreak, interactiveGUIComponentsDisabled;

    Font titleFont = new Font("Book Antiqua", Font.BOLD, 90);
    Font startFont = new Font("Book Antiqua", Font.PLAIN, 50);
    Font waitingFont = new Font("Book Antiqua", Font.BOLD, 28);
    Font normalFont = new Font("Book Antiqua", Font.PLAIN, 28);
    ImageIcon icon = new ImageIcon("src/client/gui/icons/icons8-microsoft-word-200.png");

    Wordy wordyImpl;
    Player player;
    private static Clip clip;

    private volatile int roundTimeLeft;
    private volatile int breakTimeLeft;

    int roundNumber;
    public WordyGUI(Wordy wordyImpl, Player player) {
        this.wordyImpl = wordyImpl;
        this.player = player;

        // SETUP OF MAIN WINDOW
        window = new JFrame();
        window.setSize(800, 600);
        window.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        window.getContentPane().setBackground(Color.cyan.darker());

        // SETUP TITLE PANEL
        titlePanel = new JPanel();
        titlePanel.setBounds(100, 50, 600, 180);
        titlePanel.setOpaque(false);
        titleLabel = new JLabel("WORDY");
        titleLabel.setForeground(Color.white);
        titleLabel.setFont(titleFont);
        titleLabel.setIcon(icon);
        titlePanel.add(titleLabel);

        // SETUP START BUTTON PANEL
        startButtonPanel = new JPanel();
        startButtonPanel.setBounds(200, 270, 400, 100);
        startButtonPanel.setOpaque(false);
        startButton = new JButton("START");
        startButton.setBackground(Color.white);
        startButton.setForeground(Color.cyan.darker());
        startButton.setFont(startFont);
        startButtonPanel.add(startButton);

        // SETUP LONGEST WORDS BUTTON PANEL
        longestPanel = new JPanel();
        longestPanel.setBounds(250, 400, 300, 100);
        longestPanel.setOpaque(false);
        longestButton = new JButton("TOP WORDS");
        longestButton.setBackground(Color.white);
        longestButton.setForeground(Color.cyan.darker());
        longestButton.setFont(normalFont);
        longestButton.addActionListener(new LongestButtonListener());
        longestPanel.add(longestButton);

        // SETUP LEADERBOARD BUTTON PANEL
        leaderPanel = new JPanel();
        leaderPanel.setBounds(250, 450, 300, 100);
        leaderPanel.setOpaque(false);
        leaderButton = new JButton("TOP PLAYERS");
        leaderButton.setBackground(Color.white);
        leaderButton.setForeground(Color.cyan.darker());
        leaderButton.setFont(normalFont);
        leaderButton.addActionListener(new LeaderButtonListener());
        leaderPanel.add(leaderButton);

        // SETUP LOGOUT BUTTON PANEL
        logoutButtonPanel = new JPanel();
        logoutButtonPanel.setBounds(250, 500, 300, 100);
        logoutButtonPanel.setOpaque(false);
        logoutButton = new JButton("LOGOUT");
        logoutButton.setBackground(Color.white);
        logoutButton.setForeground(Color.cyan.darker());
        logoutButton.setFont(normalFont);
        logoutButton.addActionListener(new LogoutButtonListener(player.username));
        logoutButtonPanel.add(logoutButton);

        // SETUP LOADING SCREEN FOR WAITING
        waitingPanel = new JPanel();
        waitingPanel.setBounds(100, 50, 600, 180);
        waitingPanel.setOpaque(false);
        waitingLabel = new JLabel("Waiting for players...");
        waitingLabel.setForeground(Color.white);
        waitingLabel.setFont(waitingFont);
        waitingLabel.setIcon(icon);
        waitingPanel.add(waitingLabel);

        // SETUP USERNAME LABEL
        JLabel usernameLabel = new JLabel();
        usernameLabel.setForeground(Color.white);
        usernameLabel.setFont(waitingFont);
        waitingPanel.add(usernameLabel);

        // StartButtonListener
        startButton.addActionListener(actionEvent -> {
            try {
                AudioInputStream click = AudioSystem.getAudioInputStream(new File("src/client/gui/sounds/click.wav").getAbsoluteFile());
                Clip clip = AudioSystem.getClip();
                clip.open(click);
                clip.start();
            } catch (Exception ex) {
                ex.printStackTrace();
            }

            titlePanel.setVisible(false);
            startButtonPanel.setVisible(false);
            longestPanel.setVisible(false);
            leaderPanel.setVisible(false);
            logoutButtonPanel.setVisible(false);

            waitingPanel.setVisible(true);
            window.add(waitingPanel);

            window.revalidate();
            window.repaint();

            Thread playThread = new Thread(() -> {
                try {
                    //playSound();
                    wordyApp.RoomGame roomGame = wordyImpl.play(player);
                    wordyImpl.addRoom(roomGame.gameRoomID, roomGame);
                    startGame(roomGame);
                } catch (wordyApp.NoPlayerJoined | wordyApp.ExecutionException | InterruptedException | wordyApp.UserNotFound ex) {
                    JOptionPane.showMessageDialog(window, "No player has joined the game.", "TIME'S UP!", JOptionPane.ERROR_MESSAGE);
                    try {
                        AudioInputStream click = AudioSystem.getAudioInputStream(new File("src/client/gui/sounds/click.wav").getAbsoluteFile());
                        Clip clip = AudioSystem.getClip();
                        clip.open(click);
                        clip.start();
                    } catch (Exception e) {
                        ex.printStackTrace();
                    }
                    //stopMusic();
                    waitingPanel.setVisible(false);
                    titlePanel.setVisible(true);
                    startButtonPanel.setVisible(true);
                    longestPanel.setVisible(true);
                    leaderPanel.setVisible(true);
                    logoutButtonPanel.setVisible(true);
                    window.revalidate();
                    window.repaint();
                    ex.printStackTrace();

                }
            }); playThread.start();
        });

        // COMPONENTS TO PANEL
        titlePanel.add(titleLabel);
        startButtonPanel.add(startButton);
        longestPanel.add(longestButton);
        leaderPanel.add(leaderButton);
        logoutButtonPanel.add(logoutButton);

        // COMPONENTS TO WINDOW
        window.add(titlePanel);
        window.add(startButtonPanel);
        window.add(longestPanel);
        window.add(leaderPanel);
        window.add(logoutButtonPanel);

        // WINDOW VISIBILITY
        window.setLayout(null);
        window.setLocationRelativeTo(null);
        window.setVisible(true);

        window.addWindowListener(new java.awt.event.WindowAdapter() {
            @Override
            public void windowClosing(java.awt.event.WindowEvent e) {
                try {
                    wordyImpl.logOffUser(player.username);
                } catch (wordyApp.UserNotFound userNotFound) {
                    userNotFound.printStackTrace();
                }
            }
        });
    }

    private static final String BGM_FILE_PATH = "src/client/gui/sounds/bgm.wav";

    public static void playSound() {
        try {
            AudioInputStream audioInputStream = AudioSystem.getAudioInputStream(new File(BGM_FILE_PATH).getAbsoluteFile());
            clip = AudioSystem.getClip();
            clip.open(audioInputStream);
            clip.loop(Clip.LOOP_CONTINUOUSLY); // Set the loop count to loop continuously
            clip.start();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    public static void stopMusic() {
        if (clip != null && clip.isRunning()) {
            clip.stop();
            clip.close();
        }
    }

    private void startGame(RoomGame roomGame) throws ExecutionException, InterruptedException, wordyApp.UserNotFound {
        roundNumber = 1;
        boolean isTimerExpired = false;

        // SETUP WINDOW
        window.setVisible(false);
        JFrame gameFrame = new JFrame();
        gameFrame.setSize(800, 600);
        gameFrame.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        gameFrame.getContentPane().setBackground(Color.cyan.darker());
        gameFrame.setLayout(new GridBagLayout());

        GridBagConstraints constraints = new GridBagConstraints();
        constraints.anchor = GridBagConstraints.CENTER;
        constraints.weighty = 0.5;

        // SETUP USERNAME LABEL
        JLabel usernameLabel = new JLabel("Player: " + player.username);
        usernameLabel.setFont(new Font("Book Antiqua", Font.BOLD, 30));
        usernameLabel.setForeground(Color.white);
        constraints.gridx = 0;
        constraints.gridy = 0;
        constraints.gridwidth = 2;
        gameFrame.getContentPane().add(usernameLabel, constraints);

        // SETUP LETTERS
        lettersDisplay = new JTextArea();
        lettersDisplay.setFont(new Font("Book Antiqua", Font.BOLD, 35));
        lettersDisplay.setForeground(Color.white);
        lettersDisplay.setBackground(null);
        lettersDisplay.setEditable(false);
        constraints.gridx = 0;
        constraints.gridy = 1;
        constraints.gridwidth = 2;
        constraints.gridheight = 1;
        constraints.insets.top = 10;
        gameFrame.getContentPane().add(lettersDisplay, constraints);

        // SETUP INPUT FIELD
        JTextField inputField = new JTextField();
        inputField.setPreferredSize(new Dimension(100, 40));
        inputField.setFont(new Font("Book Antiqua", Font.PLAIN, 20));
        inputField.setBorder(new LineBorder(Color.BLACK, 1));
        inputField.setBackground(Color.WHITE);
        constraints.gridx = 0;
        constraints.gridy = 3;
        constraints.gridwidth = 2;
        constraints.gridheight = 2;
        constraints.insets.top = 30;
        constraints.insets.right = 30;
        constraints.insets.left = 30;
        constraints.insets.bottom = 0;
        constraints.weightx = 2.3;
        constraints.fill = GridBagConstraints.HORIZONTAL;
        constraints.anchor = GridBagConstraints.FIRST_LINE_START;
        gameFrame.getContentPane().add(inputField, constraints);

        // SETUP SUBMIT BUTTON
        JButton submitButton = new JButton("SUBMIT");
        submitButton.setPreferredSize(new Dimension(240, 60));
        constraints.gridx = 0; // Change the gridx value to 0
        constraints.gridy = 3; // Update the gridy value to match the text field
        constraints.insets.top = 0;
        constraints.weightx = 0; // Reset weightx
        constraints.fill = GridBagConstraints.NONE;
        constraints.anchor = GridBagConstraints.CENTER; // Change the anchor to FIRST_LINE_START
        gameFrame.getContentPane().add(submitButton, constraints);


        JTextArea validDisplay = new JTextArea();
        validDisplay.setPreferredSize(new Dimension(180, 300));
        validDisplay.setFont(new Font("Book Antiqua", Font.BOLD, 20));
        validDisplay.setForeground(Color.black);
        validDisplay.setEditable(false);
        validDisplay.setBorder(new LineBorder(Color.BLACK, 1));
        validDisplay.setBackground(Color.white);
        JScrollPane scrollPane = new JScrollPane(validDisplay);
        scrollPane.setPreferredSize(new Dimension(180, 200));
        constraints.gridx = 2;
        constraints.gridy = 4;
        constraints.gridwidth = 1;
        constraints.gridheight = 3;
        constraints.insets.top = 10;
        constraints.insets.bottom = 10;
        gameFrame.getContentPane().add(validDisplay ,constraints);
        gameFrame.getContentPane().add(scrollPane,constraints);

        // SETUP BACK BUTTON
        JButton backButton = new JButton("LEAVE");
        backButton.setPreferredSize(new Dimension(100, 60));
        constraints.gridx = 1;
        constraints.gridy = 5;
        constraints.insets.top = 20;
        constraints.insets.bottom = 20;
        constraints.weightx = 0;
        constraints.fill = GridBagConstraints.CENTER;
        constraints.anchor = GridBagConstraints.CENTER;
        gameFrame.getContentPane().add(backButton, constraints);
        gameFrame.setVisible(true);

        RoomGame finalRoomGame2 = roomGame;
        backButton.addActionListener(actionEvent -> {
            //timer.stop();
            wordyImpl.finishGame(player, finalRoomGame2);
            gameFrame.dispose();
        });

        // when closing game window
        RoomGame finalRoomGame1 = roomGame;
        gameFrame.addWindowListener(new WindowAdapter() {
            @Override
            public void windowClosed(WindowEvent e) {
                System.out.println("GAMEFRAME DISPOSED");
                isRoundFinished = new AtomicBoolean(true);
                isGameFinished = new AtomicBoolean(true);
                notOnBreak = new AtomicBoolean(false);
                interactiveGUIComponentsDisabled = new AtomicBoolean(true);
                wordyImpl.decreasePlayerCount(finalRoomGame1.gameRoomID);
                wordyImpl.updatePlayerIsInGame(player.username, false);
                waitingPanel.setVisible(false);
                titlePanel.setVisible(true);
                startButtonPanel.setVisible(true);
                longestPanel.setVisible(true);
                leaderPanel.setVisible(true);
                logoutButtonPanel.setVisible(true);
                window.revalidate();
                window.repaint();
                window.setVisible(true);
            }
        });

        // SETUP TIMER LABEL
        timerLabel = new JLabel("");
        timerLabel.setPreferredSize(new Dimension(240, 40));
        timerLabel.setFont(new Font("Book Antiqua", Font.PLAIN, 40));
        constraints.gridx = 0;
        constraints.gridy = 4;
        constraints.gridwidth = 0;
        constraints.gridheight = 3;
        constraints.anchor = GridBagConstraints.LINE_END;
        gameFrame.getContentPane().add(timerLabel, constraints);
        timerLabel.setVisible(true);

        // Atomic Game Flags:
        isRoundFinished = new AtomicBoolean(false);
        isGameFinished = new AtomicBoolean(false);
        notOnBreak = new AtomicBoolean(true);
        interactiveGUIComponentsDisabled = new AtomicBoolean(false);

        // SETUP SCREEN FOR winner
        winnerPanel = new JPanel();
        winnerPanel.setBounds(100, 50, 600, 180);
        winnerPanel.setOpaque(false);
        winnerLabel = new JLabel();
        winnerLabel.setForeground(Color.white);
        winnerLabel.setFont(waitingFont);
        winnerLabel.setIcon(icon);
        winnerPanel.setVisible(false);
        winnerPanel.add(winnerLabel);
        gameFrame.getContentPane().add(winnerPanel);

        // SETUP SCREEN FOR loser
        loserPanel = new JPanel();
        loserPanel.setBounds(100, 50, 600, 180);
        loserPanel.setOpaque(false);
        loserLabel = new JLabel("You lost! Better luck next time! ^-^");
        loserLabel.setForeground(Color.white);
        loserLabel.setFont(waitingFont);
        loserLabel.setIcon(icon);
        loserPanel.setVisible(false);
        loserPanel.add(loserLabel);
        gameFrame.getContentPane().add(loserPanel);

        // SETUP SCREEN FOR no winners
        noWinnerPanel = new JPanel();
        noWinnerPanel.setBounds(100, 50, 600, 180);
        noWinnerPanel.setOpaque(false);
        noWinnerLabel = new JLabel("No Winner!");
        noWinnerLabel.setForeground(Color.white);
        noWinnerLabel.setFont(waitingFont);
        noWinnerLabel.setIcon(icon);
        noWinnerPanel.setVisible(false);
        noWinnerPanel.add(noWinnerLabel);
        gameFrame.getContentPane().add(noWinnerPanel);

        // SETUP SCREEN FOR tie result
        tiePanel = new JPanel();
        tiePanel.setBounds(100, 50, 600, 180);
        tiePanel.setOpaque(false);
        tieLabel = new JLabel("It's a tie!");
        tieLabel.setForeground(Color.white);
        tieLabel.setFont(waitingFont);
        tieLabel.setIcon(icon);
        tiePanel.setVisible(false);
        tiePanel.add(tieLabel);
        gameFrame.getContentPane().add(tiePanel);

        // SETUP SCREEN FOR game winner
        gameWinnerPanel = new JPanel();
        gameWinnerPanel.setBounds(100, 50, 600, 180);
        gameWinnerPanel.setOpaque(false);
        gameWinnerLabel = new JLabel();
        gameWinnerLabel.setForeground(Color.white);
        gameWinnerLabel.setFont(waitingFont);
        gameWinnerLabel.setIcon(icon);
        gameWinnerPanel.setVisible(false);
        gameWinnerPanel.add(gameWinnerLabel);
        gameFrame.getContentPane().add(gameWinnerPanel);

        // DETECTING enteredWord OF CLIENT FROM INPUT FIELD WHEN SUBMITTED
        RoomGame finalRoomGame = roomGame;
        Thread clientInputThread = new Thread(() -> {
            // Method to handle the entered word submission
            Consumer<String> clientInputHandler = enteredWord -> {
                System.out.println("Player " + player.username + " has entered: " + enteredWord);
                boolean wordEntrySuccess = wordyImpl.userEnteredWord(enteredWord, player, finalRoomGame);

                if (wordEntrySuccess) {
                    inputField.setText("");
                } else {
                    inputField.setBackground(Color.RED.brighter().brighter());
                    Timer timer = new Timer(500, null);
                    timer.addActionListener(e1 -> {
                        inputField.setBackground(Color.WHITE);
                        inputField.setText("");
                        timer.stop();
                    });
                    timer.start();
                }
            };

            // Action listener for the submit button
            submitButton.addActionListener(e -> {
                String enteredWord = inputField.getText().toLowerCase();
                clientInputHandler.accept(enteredWord);
                validWords.add(enteredWord);
                validDisplay.setText(String.join("\n", validWords));
            });

            // Action listener for the input field
            inputField.addActionListener(e -> {
                String enteredWord = inputField.getText().toLowerCase();
                clientInputHandler.accept(enteredWord);
                validWords.add(enteredWord);
                validDisplay.setText(String.join("\n", validWords));
            });

            // Enable the interactive GUI components
            SwingUtilities.invokeLater(() -> {
                submitButton.setEnabled(true);
                inputField.setEnabled(true);
                backButton.setEnabled(true);
            });

        }); clientInputThread.start();

        do {
            System.out.println(wordyImpl.getPlayerCount(roomGame.gameRoomID));

            if (wordyImpl.getPlayerCount(roomGame.gameRoomID) < 2){
                JOptionPane.showMessageDialog(null,"Not Enough players remaining");
                gameFrame.dispose();
                wordyImpl.deleteRoom(roomGame.gameRoomID);
            }

            if (interactiveGUIComponentsDisabled.get()) {
                submitButton.setEnabled(true);
                inputField.setEnabled(true);
                backButton.setEnabled(true);
            }

            if (notOnBreak.get()) {
                String roomRandomLetters = wordyImpl.getRoomRandomLetters(roomGame.gameRoomID);

                SwingUtilities.invokeLater(() -> lettersDisplay.setText(roomRandomLetters));

                System.out.println("Random letters set and received for this room: " + roomRandomLetters);

                System.out.println("Starting 10 second timer");

                //reset display
                usernameLabel.setVisible(true);
                lettersDisplay.setVisible(true);
                inputField.setVisible(true);
                submitButton.setVisible(true);
                validDisplay.setVisible(true);
                scrollPane.setVisible(true);
                backButton.setVisible(true);
                winnerPanel.setVisible(false);
                loserPanel.setVisible(false);
                noWinnerPanel.setVisible(false);
                tiePanel.setVisible(false);

                wordyImpl.startRoundTimer(roomGame, 10);
                roundTimeLeft = (int) wordyImpl.getRoundTimer(roomGame.gameRoomID);
                AtomicInteger roundTimerValue = new AtomicInteger(roundTimeLeft);

                while (roundTimerValue.get() >= 0) {
                    SwingUtilities.invokeLater(() -> timerLabel.setText(Integer.toString(roundTimerValue.get())));
                    try {
                        Thread.sleep(1000);
                        roundTimeLeft = (int) wordyImpl.getRoundTimer(roomGame.gameRoomID);
                        roundTimerValue.set(roundTimeLeft);
                        System.out.println("Timer: " + roundTimerValue);
                    }
                    catch (InterruptedException ie) {
                        System.out.println("Round time thread was interrupted :(( ");
                        ie.printStackTrace();
                    }
                    if (roundTimerValue.get() == 0) {
                        System.out.println("\n--Round timer has reached 0--");
                        break;
                    }
                }

                if (roundTimerValue.get() == 0){
                    SwingUtilities.invokeLater(() -> {
                        submitButton.setEnabled(false);
                        inputField.setEnabled(false);
                        backButton.setEnabled(false);
                    });
                    interactiveGUIComponentsDisabled.set(true);
                    isRoundFinished.set(true);
                    isTimerExpired = true;
                    System.out.println("\nRound is over");
                }

                if (isRoundFinished.get()) {
                    validWords.clear();
                    validDisplay.setText("");

                    System.out.println("\nGetting round winner...");

                    //sets up the winner/loser display
                    usernameLabel.setVisible(false);
                    lettersDisplay.setVisible(false);
                    inputField.setVisible(false);
                    submitButton.setVisible(false);
                    validDisplay.setVisible(false);
                    scrollPane.setVisible(false);
                    backButton.setVisible(false);
                    System.out.println("roundNumber: " + roundNumber);
                    String winner = wordyImpl.getWinner(roomGame.gameRoomID, roundNumber);
                    System.out.println("winner: " + winner);
                    roundNumber++;
                    try {
                        Player playerRoundWinner = wordyImpl.roundWinnerChecker(roomGame);
                        if (playerRoundWinner != null) {
                            wordyImpl.updateResult(roomGame.gameRoomID, playerRoundWinner.username, roundNumber);
                            winner = wordyImpl.getWinner(roomGame.gameRoomID,roundNumber);
                        } else {
                            winner = wordyImpl.getWinner(roomGame.gameRoomID,roundNumber);
                        }
                        System.out.println("Round winner: " + playerRoundWinner.username);
                        System.out.println("player Username: " +player.username);
                        System.out.println("roundNumber: " +roundNumber);
                        System.out.println("getWinner: " + wordyImpl.getWinner(roomGame.gameRoomID,roundNumber));
                        System.out.println("winner: " + winner);
                        if (winner.equals(player.username)) {
                            System.out.println("Round winner: " + player.username);
                            winnerLabel.setText("You Won! Congratulations! " + player.username + " ^o^");
                            winnerPanel.setVisible(true);
                        } else {
                            System.out.println("Round winner: " + winner);
                            System.out.println("You lost");
                            loserPanel.setVisible(true);
                        }
                    } catch (NoWinner e) {
                        System.out.println("No round winner was found!");
                        noWinnerPanel.setVisible(true);
                    } catch (TieResult e) {
                        System.out.println("Tie is detected.");
                        tiePanel.setVisible(true);
                    }

                    System.out.println("Checking if a game winner is found...");

                    if (wordyImpl.gameWinStateChecker(roomGame)) { // If a game winner was found
                        Player gameWinnerPlayer = wordyImpl.getGameWinner(roomGame);

                        //shows gamewinner
                        usernameLabel.setVisible(false);
                        lettersDisplay.setVisible(false);
                        inputField.setVisible(false);
                        submitButton.setVisible(false);
                        validDisplay.setVisible(false);
                        scrollPane.setVisible(false);
                        backButton.setVisible(false);
                        winnerPanel.setVisible(false);
                        loserPanel.setVisible(false);
                        noWinnerPanel.setVisible(false);
                        tiePanel.setVisible(false);
                        gameWinnerPanel.setVisible(true);


                        System.out.println("A game winner is found! Congrats " + gameWinnerPlayer.username + "!");
                        gameWinnerLabel.setText("A game winner is found! Congrats! " + gameWinnerPlayer.username +" ^o^");
                        wordyImpl.decreasePlayerCount(roomGame.gameRoomID);
                        isGameFinished.set(true);

                        //fixed
                        //
                        wordyImpl.startBreakTimer(roomGame);

                        breakTimeLeft = (int) wordyImpl.getBreakTimer(roomGame.gameRoomID);
                        System.out.println("Initial value of break timer: " + breakTimeLeft);
                        AtomicInteger roundBreakTimerValue = new AtomicInteger(breakTimeLeft);

                        while (roundBreakTimerValue.get() >= 0) {
                            SwingUtilities.invokeLater(() -> timerLabel.setText(Integer.toString(roundBreakTimerValue.get())));

                            try {
                                Thread.sleep(1000);
                                breakTimeLeft = (int) wordyImpl.getBreakTimer(roomGame.gameRoomID);
                                roundBreakTimerValue.set(breakTimeLeft);
                                System.out.println("Break Timer: " + breakTimeLeft);
                            } catch (InterruptedException ie) {
                                System.out.println("Break Timer Thread was interrupted :(( ");
                                ie.printStackTrace();
                            }

//                            if (roundBreakTimerValue.get() == 1) {
//                                gameFrame.dispose();
//                                break;
//                            }

                            if (roundBreakTimerValue.get() == 0) {
                                gameFrame.dispose();
                                break;
                            }
                        }

                    } else { // No game winner yet, prepare next round by setting the random letters for the room's next round
                        System.out.println("No game winner yet...preparing for next round...");
                        roomGame = wordyImpl.nextRoundHandler(roomGame);

                        String nextRoundRandomLetters = wordyImpl.getRoomRandomLetters(roomGame.gameRoomID);
                        SwingUtilities.invokeLater(() -> lettersDisplay.setText(nextRoundRandomLetters));

                        System.out.println("Next round's random letters: " + nextRoundRandomLetters);

                        System.out.println("starting 5 sec timer...");
                        notOnBreak.set(false);

                        wordyImpl.startBreakTimer(roomGame);

                        breakTimeLeft = (int) wordyImpl.getBreakTimer(roomGame.gameRoomID);
                        System.out.println("Initial value of break timer: " + breakTimeLeft);
                        AtomicInteger roundBreakTimerValue = new AtomicInteger(breakTimeLeft);

                        while (roundBreakTimerValue.get() >= 0) {
                            SwingUtilities.invokeLater(() -> timerLabel.setText(Integer.toString(roundBreakTimerValue.get())));

                            try {
                                Thread.sleep(1000);
                                breakTimeLeft = (int) wordyImpl.getBreakTimer(roomGame.gameRoomID);
                                roundBreakTimerValue.set(breakTimeLeft);
                                System.out.println("Break Timer: " + breakTimeLeft);
                            } catch (InterruptedException ie) {
                                System.out.println("Break Timer Thread was interrupted :(( ");
                                ie.printStackTrace();
                            }

                            if (roundBreakTimerValue.get() == 0) {
                                break;
                            }
                        }

                        if (roundBreakTimerValue.get() == 0) { // Start new round
                            System.out.println("Preparing to start new round...");
                            isTimerExpired = false;
                            isRoundFinished.set(false);
                            notOnBreak.set(true);
                        }
                    } // end of else

                } // end of if isRoundFinished

                if (isGameFinished.get()) {
                    wordyImpl.finishGame(player, roomGame);
                    break;
                }
            }
        } while(!isGameFinished.get());

    } // End of startGame()

        //do {

           /* System.out.println(wordyImpl.getPlayerCount(roomGame.gameRoomID));

            if (wordyImpl.getPlayerCount(roomGame.gameRoomID) < 2){
                JOptionPane.showMessageDialog(null,"Not Enough players remaining");
                gameFrame.dispose();
                wordyImpl.deleteRoom(roomGame.gameRoomID);
            }

            if (interactiveGUIComponentsDisabled.get()) {
                submitButton.setEnabled(true);
                inputField.setEnabled(true);
                backButton.setEnabled(true);
            }

            if (notOnBreak.get()) {
                String roomRandomLetters = wordyImpl.getRoomRandomLetters(roomGame.gameRoomID);

                SwingUtilities.invokeLater(() -> lettersDisplay.setText(roomRandomLetters));

                System.out.println("Random letters set and received for this room: " + roomRandomLetters);

                System.out.println("Starting 10 second timer");

                //reset display
                usernameLabel.setVisible(true);
                lettersDisplay.setVisible(true);
                inputField.setVisible(true);
                submitButton.setVisible(true);
                validDisplay.setVisible(true);
                scrollPane.setVisible(true);
                backButton.setVisible(true);
                winnerPanel.setVisible(false);
                loserPanel.setVisible(false);
                noWinnerPanel.setVisible(false);
                tiePanel.setVisible(false);

                wordyImpl.startRoundTimer(roomGame, 10);
                roundTimeLeft = (int) wordyImpl.getRoundTimer(roomGame.gameRoomID);
                AtomicInteger roundTimerValue = new AtomicInteger(roundTimeLeft);

                while (roundTimerValue.get() >= 0) {
                    SwingUtilities.invokeLater(() -> timerLabel.setText(Integer.toString(roundTimerValue.get())));
                    try {
                        Thread.sleep(1000);
                        roundTimeLeft = (int) wordyImpl.getRoundTimer(roomGame.gameRoomID);
                        roundTimerValue.set(roundTimeLeft);
                        System.out.println("Timer: " + roundTimerValue);
                    }
                    catch (InterruptedException ie) {
                        System.out.println("Round time thread was interrupted :(( ");
                        ie.printStackTrace();
                    }
                    if (roundTimerValue.get() == 0) {
                        System.out.println("\n--Round timer has reached 0--");
                        break;
                    }
                }

                if (roundTimerValue.get() == 0){
                    SwingUtilities.invokeLater(() -> {
                        submitButton.setEnabled(false);
                        inputField.setEnabled(false);
                        backButton.setEnabled(false);
                    });
                    interactiveGUIComponentsDisabled.set(true);
                    isRoundFinished.set(true);
                    isTimerExpired = true;
                    System.out.println("\nRound is over");
                }

                if (isRoundFinished.get()) {
                    validWords.clear();
                    validDisplay.setText("");

                    System.out.println("\nGetting round winner...");

                    //sets up the winner/loser display
                    usernameLabel.setVisible(false);
                    lettersDisplay.setVisible(false);
                    inputField.setVisible(false);
                    submitButton.setVisible(false);
                    validDisplay.setVisible(false);
                    scrollPane.setVisible(false);
                    backButton.setVisible(false);

                    try {
                        Player playerRoundWinner = wordyImpl.roundWinnerChecker(roomGame);
                        System.out.println("Round winner: " + playerRoundWinner.username);
                        System.out.println(player.username);
                        if (playerRoundWinner.username.equals(player.username)) {
                            System.out.println("Round winner: " + playerRoundWinner.username);
                            winnerLabel.setText("You Won! Congratulations! " + playerRoundWinner.username + " ^o^");
                            winnerPanel.setVisible(true);
                        } else {
                            System.out.println("Round winner: " + playerRoundWinner.username);
                            System.out.println("You lost");
                            loserPanel.setVisible(true);
                        }
                    } catch (NoWinner e) {
                        System.out.println("No round winner was found!");
                        noWinnerPanel.setVisible(true);
                    } catch (TieResult e) {
                        System.out.println("Tie is detected.");
                        tiePanel.setVisible(true);
                    }

                    System.out.println("Checking if a game winner is found...");

                    if (wordyImpl.gameWinStateChecker(roomGame)) { // If a game winner was found
                        Player gameWinnerPlayer = wordyImpl.getGameWinner(roomGame);

                        //shows gamewinner
                        usernameLabel.setVisible(false);
                        lettersDisplay.setVisible(false);
                        inputField.setVisible(false);
                        submitButton.setVisible(false);
                        validDisplay.setVisible(false);
                        scrollPane.setVisible(false);
                        backButton.setVisible(false);
                        winnerPanel.setVisible(false);
                        loserPanel.setVisible(false);
                        noWinnerPanel.setVisible(false);
                        tiePanel.setVisible(false);
                        gameWinnerPanel.setVisible(true);



                        System.out.println("A game winner is found! Congrats " + gameWinnerPlayer.username + "!");
                        gameWinnerLabel.setText("A game winner is found! Congrats! " + gameWinnerPlayer.username +" ^o^");
                        wordyImpl.decreasePlayerCount(roomGame.gameRoomID);
                        isGameFinished.set(true);

                        //fixed
                        //
                        wordyImpl.startBreakTimer(roomGame);

                        breakTimeLeft = (int) wordyImpl.getBreakTimer(roomGame.gameRoomID);
                        System.out.println("Initial value of break timer: " + breakTimeLeft);
                        AtomicInteger roundBreakTimerValue = new AtomicInteger(breakTimeLeft);

                        while (roundBreakTimerValue.get() >= 0) {
                            SwingUtilities.invokeLater(() -> timerLabel.setText(Integer.toString(roundBreakTimerValue.get())));

                            try {
                                Thread.sleep(1000);
                                breakTimeLeft = (int) wordyImpl.getBreakTimer(roomGame.gameRoomID);
                                roundBreakTimerValue.set(breakTimeLeft);
                                System.out.println("Break Timer: " + breakTimeLeft);
                            } catch (InterruptedException ie) {
                                System.out.println("Break Timer Thread was interrupted :(( ");
                                ie.printStackTrace();
                            }

                            if (roundBreakTimerValue.get() == 1) {
                                gameFrame.dispose();

                                break;
                            }
                        }

                    } else { // No game winner yet, prepare next round by setting the random letters for the room's next round
                        System.out.println("No game winner yet...preparing for next round...");
                        roomGame = wordyImpl.nextRoundHandler(roomGame);

                        String nextRoundRandomLetters = wordyImpl.getRoomRandomLetters(roomGame.gameRoomID);
                        SwingUtilities.invokeLater(() -> lettersDisplay.setText(nextRoundRandomLetters));

                        System.out.println("Next round's random letters: " + nextRoundRandomLetters);

                        System.out.println("starting 5 sec timer...");
                        notOnBreak.set(false);

                        wordyImpl.startBreakTimer(roomGame);

                        breakTimeLeft = (int) wordyImpl.getBreakTimer(roomGame.gameRoomID);
                        System.out.println("Initial value of break timer: " + breakTimeLeft);
                        AtomicInteger roundBreakTimerValue = new AtomicInteger(breakTimeLeft);

                        while (roundBreakTimerValue.get() >= 0) {
                            SwingUtilities.invokeLater(() -> timerLabel.setText(Integer.toString(roundBreakTimerValue.get())));

                            try {
                                Thread.sleep(1000);
                                breakTimeLeft = (int) wordyImpl.getBreakTimer(roomGame.gameRoomID);
                                roundBreakTimerValue.set(breakTimeLeft);
                                System.out.println("Break Timer: " + breakTimeLeft);
                            } catch (InterruptedException ie) {
                                System.out.println("Break Timer Thread was interrupted :(( ");
                                ie.printStackTrace();
                            }

                            if (roundBreakTimerValue.get() == 0) {
                                break;
                            }
                        }

                        if (roundBreakTimerValue.get() == 0) { // Start new round
                            System.out.println("Preparing to start new round...");
                            isTimerExpired = false;
                            isRoundFinished.set(false);
                            notOnBreak.set(true);
                        }
                    } // end of else

                } // end of if isRoundFinished

                if (isGameFinished.get()) {
                    wordyImpl.finishGame(roomGame);
                    wordyImpl.logOffUser(player.username);
                    break;
                }
            }*/
       // } while(!isGameFinished.get());

    // LongestButtonListener - displays top 5 longest words
    class LongestButtonListener implements ActionListener {
        @Override
        public void actionPerformed(ActionEvent e) {

            JFrame frame = new JFrame("Top 5 Longest Words");
            frame.setSize(800, 500);
            frame.setLocationRelativeTo(null);

            // Create a JLabel to display the top 5 longest words
            JLabel top5Label = new JLabel("Top 5 Longest Words", SwingConstants.CENTER);
            top5Label.setFont(new Font("Book Antiqua", Font.BOLD, 40));
            frame.add(top5Label, BorderLayout.NORTH);

            // Create a JPanel to hold the results
            JPanel resultPanel = new JPanel(new GridLayout(0, 4));
            resultPanel.setBorder(BorderFactory.createLineBorder(Color.black));
            resultPanel.setBackground(Color.cyan.darker());
            frame.add(resultPanel, BorderLayout.CENTER);

            // Add heading labels
            addHeadingLabel(resultPanel, "Rank");
            addHeadingLabel(resultPanel, "Player");
            addHeadingLabel(resultPanel, "Word");
            addHeadingLabel(resultPanel, "Length");

            // Get the top 5 longest words from the database
            LongestWordWinner[] winners = wordyImpl.top5longestWords();

            // Display the results in the resultPanel
            int prevRank = -1;

            for (int i = 0; i < winners.length; i++) {
                int currentRnk = winners[i].rank;

                if (currentRnk != prevRank) {
                    addResultLabel(resultPanel, String.valueOf(currentRnk));
                } else {
                    addResultLabel(resultPanel, "");
                }

                addResultLabel(resultPanel, winners[i].playerName);
                addResultLabel(resultPanel, winners[i].longestWord);
                addResultLabel(resultPanel, String.valueOf(winners[i].wordLength));

                prevRank = currentRnk;// for comparison on the next iteration
            }

            frame.setVisible(true);
            longestPanel.setVisible(true);
        }

        private void addHeadingLabel(JPanel panel, String text) {
            JLabel headingLabel = new JLabel(text);
            headingLabel.setFont(new Font("Book Antiqua", Font.BOLD, 30));
            headingLabel.setForeground(Color.white);
            panel.add(headingLabel);
        }

        private void addResultLabel(JPanel panel, String text) {
            JLabel resultLabel = new JLabel(text);
            resultLabel.setFont(new Font("Book Antiqua", Font.BOLD, 25));
            resultLabel.setForeground(Color.white);
            panel.add(resultLabel);
        }
    }

    // LeaderButtonListener - displays leaderboard
    private class LeaderButtonListener implements ActionListener {
        @Override
        public void actionPerformed(ActionEvent e) {

            JFrame frame = new JFrame();
            frame.setTitle("Top Players");
            frame.setSize(400, 300);
            frame.setLocationRelativeTo(null);

            // Create a JLabel to display the top players
            JLabel topPlayer = new JLabel("Top Players", SwingConstants.CENTER);
            topPlayer.setFont(new Font("Book Antiqua", Font.BOLD, 40));
            topPlayer.setForeground(Color.BLACK);
            topPlayer.setHorizontalAlignment(JLabel.CENTER);
            frame.getContentPane().add(topPlayer, BorderLayout.NORTH);

            // Create a JPanel to hold the results
            JPanel resultPanel = new JPanel(new GridLayout(0, 3));
            resultPanel.setBorder(BorderFactory.createLineBorder(Color.black));
            resultPanel.setBackground(Color.cyan.darker());
            frame.getContentPane().add(resultPanel, BorderLayout.CENTER);

            // Add heading labels
            JLabel rankHeadingLabel = new JLabel("Rank");
            rankHeadingLabel.setFont(new Font("Book Antiqua", Font.BOLD, 30));
            rankHeadingLabel.setForeground(Color.white);
            JLabel playerHeadingLabel = new JLabel("Player");
            playerHeadingLabel.setFont(new Font("Book Antiqua", Font.BOLD, 30));
            playerHeadingLabel.setForeground(Color.white);
            JLabel winsHeadingLabel = new JLabel("Wins");
            winsHeadingLabel.setFont(new Font("Book Antiqua", Font.BOLD, 30));
            winsHeadingLabel.setForeground(Color.white);
            resultPanel.add(rankHeadingLabel);
            resultPanel.add(playerHeadingLabel);
            resultPanel.add(winsHeadingLabel);

            // Get the top players from the database
            LeaderBoard[] topPlayers = wordyImpl.showLeaderBoard();

            // Display the results in the resultPanel
            int prevRnk = -1;

            for (int i = 0; i < topPlayers.length; i++) {

                JLabel rankLabel;
                if (topPlayers[i].rank != prevRnk) {
                    rankLabel = new javax.swing.JLabel(String.valueOf(topPlayers[i].rank));
                    prevRnk = topPlayers[i].rank;
                } else {
                    rankLabel = new javax.swing.JLabel("");
                }
                rankLabel.setFont(new Font("Book Antiqua", Font.BOLD, 25));
                rankLabel.setForeground(Color.white);
                JLabel playerNameLabel = new JLabel(topPlayers[i].playerName);
                playerNameLabel.setFont(new Font("Book Antiqua", Font.BOLD, 25));
                playerNameLabel.setForeground(Color.white);
                JLabel numberOfWinsLabel = new JLabel(String.valueOf(topPlayers[i].numberOfWins));
                numberOfWinsLabel.setFont(new Font("Book Antiqua", Font.BOLD, 25));
                numberOfWinsLabel.setForeground(Color.white);
                resultPanel.add(rankLabel);
                resultPanel.add(playerNameLabel);
                resultPanel.add(numberOfWinsLabel);
            }

            frame.setVisible(true);
            leaderPanel.setVisible(true);
        }
    }

    // LogoutButtonListener - initiates logging off user
    class LogoutButtonListener implements ActionListener {
        private final String username; // Field to hold the username

        public LogoutButtonListener(String username) {
            this.username = username;
        }

        @Override
        public void actionPerformed(ActionEvent e) {
            try {
                wordyImpl.logOffUser(username);
                window.setVisible(false);
                window.dispose();// Close the current WordyGUI window

                // play the sound
                try {
                    AudioInputStream click = AudioSystem.getAudioInputStream(new File("src/client/gui/sounds/click.wav").getAbsoluteFile());
                    Clip clip = AudioSystem.getClip();
                    clip.open(click);
                    clip.start();
                } catch (Exception ex) {
                    ex.printStackTrace();
                }

                new ClientEntry(wordyImpl); // Redirect to the login window

            } catch (Exception ex) {
                throw new RuntimeException(ex);
            }
        }
    }

}