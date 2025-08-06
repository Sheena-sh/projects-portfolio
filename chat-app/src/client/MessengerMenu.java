package client;

import javax.xml.parsers.*;
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.util.*;
import org.w3c.dom.*;

// import class from package

/**
 * GUI for the Messenger client that displays the list of currently online users
 * Allows the user to initiate a conversation or disconnect from the server.
 */
public class MessengerMenu extends JFrame { // Extends the JFrame class; a top-level window with a title bar and borders

    /**
     * Attributes:
     * Client is an instance of MessengerClient, which handles the communication with the server
     * statusLabel is a JLabel that displays the text "Available users:"
     * onlineUsersList is a JList object that displays the list of currently online users
     * dcButton is a JButton that allows the user to disconnect from the server
     * user is a String that stores the name of the current user
     * onlineUsers is a Vector that stores the list of online users.
     */
    //private ClientGUI cGUI;
    private MessengerClient client;
    private JLabel statusLabel;
    public JList onlineUsersList;

    private String user;
    public Vector onlineUsers;// list of online users

    private JButton broadcast;
    private JButton createGC;
    private JButton dcButton;


    /**
     * MessengerMenu Constructor takes two parameters:
     * userName, which is the name of the current user
     * messengerClient, which is an instance of MessengerClient
     * It sets the title of the window to userName + "'s Messenger Status"
     * initializes the instance variables, and adds components to the GUI.
     * Displays the current users that are retrieved from the MessengerClient.
     *
     */
    public MessengerMenu(String userName, MessengerClient client) {
        super(userName + "'s Messenger Status");
        this.client = client;
        this.user = userName;

        Container containerGUI = this.getContentPane();
        this.statusLabel = new JLabel("Available users (right - click user for options): ");
        containerGUI.add(this.statusLabel, "North"); //top of th
        NodeList userElements = this.client.getUsers().getDocumentElement().getElementsByTagName("user"); //gets the data under the tagname user and put it in a Nodelist using the getUsers method in messengerClient
        int numberOfUsers = userElements.getLength(); //length of the nodelist
        this.onlineUsers = new Vector(numberOfUsers); // populates the vector with the userNames with the capacity of numberOfUsers

        for (int i = 0; i < numberOfUsers; ++i) { //adds the users to the list of online user
            String currentUser = userElements.item(i).getFirstChild().getNodeValue(); //get the first child of the node which is the username
            this.onlineUsers.addElement(currentUser); //adds the currentUser to the vector of onlineUsers
        }

        this.onlineUsersList = new JList(this.onlineUsers); //make a jlist of onlineUsers called userList
        this.onlineUsersList.setSelectionMode(0); // means that only one item can be selected at a time

        MouseListener userMouseListener = new MouseAdapter() { // called when a user clicks an item in the jlist

        };

        this.onlineUsersList.addMouseListener(userMouseListener); // detects if a user click something from the list
        containerGUI.add(new JScrollPane(this.onlineUsersList), "Center"); //centers the list with a scrollpane
        JPanel buttonPanel = new JPanel(new FlowLayout(FlowLayout.CENTER)); // create a new panel with FlowLayout
        this.createGC = new JButton("Create Group");
        this.dcButton = new JButton("Disconnect"); // disconnect button if a user wants to disconnect from the server
        this.broadcast = new JButton("Broadcast");
        buttonPanel.add(this.createGC);
        buttonPanel.add(this.dcButton); // add dcButton to buttonPanel
        buttonPanel.add(this.broadcast); // add broadcast button to buttonPanel
        containerGUI.add(buttonPanel, BorderLayout.SOUTH); // add buttonPanel to the SOUTH of containerGUI

        this.broadcast.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                MessengerMenu.this.startBroadcast(user, client, MessengerMenu.this);
            }
        });

        this.createGC.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                MessengerMenu.this.startGroupCreation(MessengerMenu.this, client);
            }
        });

        this.dcButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                MessengerMenu.this.disconnectUser();
            } // calls the method disconnectUser if button is clicked
        });

        JTextField searchField = new JTextField();
        containerGUI.add(searchField, java.awt.BorderLayout.NORTH);

        searchField.addActionListener(e -> {
            String searchText = searchField.getText();
            searchUsers(searchText);

            searchField.addKeyListener(new KeyAdapter() {
                public void keyPressed(KeyEvent e) {
                    if (e.getKeyCode() == KeyEvent.VK_ENTER) {
                        String searchText = searchField.getText().toLowerCase(); // get the                search text and convert to lowercase
                        filterOnlineUsersList(searchText); // filter the online users list based on the search text
                    } else if (e.getKeyCode() == KeyEvent.VK_ESCAPE) { // listen for Escape key press
                        searchField.setText(""); // clear the search field
                        onlineUsersList.setModel(new DefaultListModel()); // reset the list model
                        for (Object user : onlineUsers) {
                            ((DefaultListModel) onlineUsersList.getModel()).addElement(user); // add the original users to the list model
                        }
                    }
                }
                private void filterOnlineUsersList(String searchText) {
                    DefaultListModel model = new DefaultListModel(); // create a new model for the filtered list
                    for (Object user : onlineUsers) {
                        String username = user.toString().toLowerCase();
                        if (username.contains(searchText)) { // if the username contains the search text, add it to the filtered list
                            model.addElement(user);
                        }
                    }
                    onlineUsersList.setModel(model); // set the online users list model to the filtered list model
                }
            });
        });

        this.addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e) { //listens if the window has been closed
                MessengerMenu.this.disconnectUser(); // if its closed disconnects the clients
            }
        });
        this.setSize(400, 300);
        this.show();

        JPopupMenu popup = new JPopupMenu();
        JMenu subMenu = new JMenu("Sub-menu");
        DefaultListModel<String> subModel = new DefaultListModel<>();
        subModel.addElement("Private Message");
        subModel.addElement("Add to the Group Chat");
        subModel.addElement("Bookmark/ Remove bookmark");
        //subModel.addElement("Ban User/ Unban User"); --> server
        subModel.addElement("Search Contacts");
        JList<String> subList = new JList<>(subModel);
        subMenu.add(new JScrollPane(subList));
        popup.add(subMenu);

        onlineUsersList.addMouseListener(new MouseAdapter() {
            public void mouseReleased(MouseEvent e) {
                if (e.isPopupTrigger())
                    popup.show(e.getComponent(), e.getX(), e.getY());
            }
        });

        subList.addMouseListener(new MouseAdapter() {
            @Override
            public void mouseClicked(MouseEvent e) {
                super.mouseClicked(e);
                int index = subList.getSelectedIndex();
                if (index == 0) {
                    int selectedIndex = MessengerMenu.this.onlineUsersList.getSelectedIndex(); // gets the index of the selected item
                    MessengerMenu.this.startConversation(selectedIndex);   //calls the startConversation with the index as the parameter
                }
                if (index == 1) {
                    //GroupCreation creation
                    //add to gc //kick
                }
                if (index == 2) {
                    //ClientBookmark bookmark = new client.ClientBookmark();
                    //bookmark.setVisible(true);
                    //bookmark
                }
                if (index == 3) {
                    //searchUsers(searchText);
                    // search
                }
            }
        });

    } // end of constructor

    public String getUser() {
        return this.user;
    }

    /**
     * When a user double-clicks on an online user; this method takes an index as an argument which corresponds to
     * the index of the selected online user in the onlineUsers vector
     * The method retrieves the name of the selected online user using the elementAt() method of the onlineUsers vector
     * and passes it to the findConversationIndex() method of the client object to determine if a conversation with that user already exists.
     * If a conversation does not already exist, the method creates a new Conversation object.
     */
    public void startConversation(int index) {
        String chosenRecipient = (String) this.onlineUsers.elementAt(index); // gets the userName from the onlineUsers using the index that was clicked twice & casting the result as a string because of the parameter
        if (this.client.findConversationIndex(chosenRecipient) == -1)  //checks if there's a past conversation through the method findConversation from the MessengerClient
            new Conversation(chosenRecipient, this, this.client); // if its = -1 it means it's a new conversation therefore create a new Conversation
    }

    /**
     * Adds a user to the list of online users.
     * The method takes a String argument representing the username of the user to be added, and adds it to the onlineUsers vector.
     * The setListData() method of the onlineUsersList object is called to update the JList of online users.
     * @param userToAdd string username of the user to be added
     */
    public void add(String userToAdd) {
        this.onlineUsers.addElement(userToAdd); // adds the newly connected user to the list of online client
        this.onlineUsersList.setListData(this.onlineUsers); //updates the onlineUsers
    }

    /**
     *  Removes a user from the list of online users.
     *  Takes a String argument representing the username of the user to be removed and removes it from the onlineUsers vector.
     *  The setListData() method of the onlineUsersList object is called to update the JList of online users.
     * @param userToRemove username of the user to be removed
     */
    public void remove(String userToRemove) {
        this.onlineUsers.removeElementAt(this.findOnlineUsersIndex(userToRemove));
        this.onlineUsersList.setListData(this.onlineUsers);
    }

    /**
     * Finds the index of a user in the onlineUsers vector
     * The method takes a String argument representing the username of the user to be found
     * Iterates through the onlineUsers vector to find the same username
     * If the username is found, the method returns the index of where the user is located in the vector
     * If the username is not found return -1
     * @param onlineUserName name of online user
     * @return indexOfUser (i) otherwise -1
     */
    public int findOnlineUsersIndex(String onlineUserName) {
        for(int i = 0; i < this.onlineUsers.size(); ++i) { //It iterates through the onlineUsers vector to find the same username and return the index of where the user is
            String currentUserName = (String)this.onlineUsers.elementAt(i);
            if (currentUserName.equals(onlineUserName)) {
                return i;
            }
        }
        return -1;
    }

        public void startBroadcast(String broadcaster, MessengerClient client, MessengerMenu status) {
        new Broadcast(broadcaster, client, status);
    }

    public void startGroupCreation(MessengerMenu status, MessengerClient client) {
        new GroupCreation(status, client);
    }

    /**
     * Disconnects the user from the server
     * The method creates a new Document object using the DocumentBuilderFactory and DocumentBuilder classes.
     * send() method of the client object is then called to send the disconnectUser document to the server
     * stopListening() method of the client object is called to stop listening for messages from the server.
     */
    public void disconnectUser() {

        DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();

        try {
            DocumentBuilder docBuild = dbFactory.newDocumentBuilder();
            Document forDisconnectingUser = docBuild.newDocument();
            forDisconnectingUser.appendChild(forDisconnectingUser.createElement("disconnect"));
            this.client.send(forDisconnectingUser);
            this.client.stopListening();
        }
        catch (ParserConfigurationException pce) {
            pce.printStackTrace();
        }
    }

    public JList getOnlineUsersList() {
        return onlineUsersList;
    }

    private void searchUsers(String searchText) {
        // Create a new vector to hold the filtered users
        Vector filteredUsers = new Vector();

        // Loop through each user in the onlineUsers vector
        for (int i = 0; i < onlineUsers.size(); i++) {
            String user = (String) onlineUsers.get(i);
            // If the user contains the search text, add it to the filteredUsers vector
            if (user.toLowerCase().contains(searchText.toLowerCase())) {
                filteredUsers.add(user);
            }
        }
        // Set the onlineUsersList model to the filteredUsers vector
        onlineUsersList.setListData(filteredUsers);
    }


}
