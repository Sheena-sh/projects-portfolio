package server;

import java.io.File;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import javax.swing.JOptionPane;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import account.User;
import account.UserManager;
import account.UserThread;
import client.Conversation;
import client.MessengerMenu;
import client.GroupTextMessage;
import client.TextMessage;
import org.w3c.dom.*;
import gui.ServerGUI;
import org.xml.sax.SAXException;

// The server waits for client connections and manages communication between clients
public class MessengerServer {

    /*
     * Fields that declare several instance variables for
     * storing the connected users and document objects for managing user accounts
     */
    private ServerSocket serverSocket;
    private ServerGUI gui;
    private DocumentBuilderFactory dbFactory;
    private DocumentBuilder docBuilder;
    private Document users;
    public Socket clientSocket;
    private static Vector onlineUsers; // array objects for online users
    private static Vector offlineUser;
    public static UserManager userManager = new UserManager();
    public static List<UserThread> clients = new ArrayList<>();
    private MessengerMenu groups;
    boolean isServerAvailable = false;
    // static Vector<Socket> ClientArr = new Vector<>();

    /*
     * This is the constructor for the MessengerServer class.
     * It sets the title of the server window and creates the necessary UI elements.
     * Try catch block of code initializes the DocumentBuilderFactory and DocumentBuilder objects
     * used for managing user accounts.
     */
    public MessengerServer() {

        /*
         * Creates the user interface for the server window and
         * initializes the onlineUsers and users instance variables
         */
        gui = new ServerGUI(MessengerServer.this);

        try {
            this.dbFactory = DocumentBuilderFactory.newInstance();
            this.docBuilder = this.dbFactory.newDocumentBuilder();
        }
        catch (ParserConfigurationException e) {e.printStackTrace();}

        onlineUsers = new Vector();
        offlineUser = new Vector();
        this.users = this.initializeUsers();

        /*
         * Loads user account information from a file using the userManager object.
         * If there is an error loading the user accounts, the server will display an error message and exit.
         */
        try {
            System.out.println("Users are read successfully ...");
            userManager.loadUsers();
        }
        catch (Exception e) {
            JOptionPane.showMessageDialog(gui, e.getMessage());
            System.exit(0);
        }

    } // end of MessengerServer constructor


    /*
     * Method creates a new ServerSocket object and listens for incoming client connections.
     * When a connection is received, a new UserThread object is created
     * to handle communication with the client.
     */
    public void runServer() {

        try {
            serverSocket = new ServerSocket(5000,5000);
            this.isServerAvailable = true;
            gui.updateGUI("Server Started!\n");
            System.out.println("Server is running...");

            while(isServerAvailable && !Thread.currentThread().isInterrupted()) {

                try {
                    clientSocket = serverSocket.accept();
                    gui.updateGUI("\nConnection received from: " + clientSocket.getInetAddress().getHostAddress());
                    UserThread newUser = new UserThread(clientSocket, this, gui);
                    clients.add(newUser); // add the new user to the clients list
                    newUser.start();
                }

                catch(SocketException se) {
                    System.out.println("Client Socket has been closed");
                    break;
                }
            }
        }

        catch (IOException ioe) {
            ioe.printStackTrace();
            System.exit(1);
        }
    } // end of runServer()

    public void stopServer() {
        try{
            System.out.println("number of clients: " + clients.size());
            this.isServerAvailable = false;
            serverSocket.close();
            gui.updateGUI("Server stopped!\n");
            terminateClient();
        }
        catch (IOException ioe){
            ioe.printStackTrace();
            System.exit(1);
        }
    } // end of stopServer()

    /*
     *Creates a new Document object using the DocumentBuilder instance and
     * adds an empty root element named "users" to it.
     * This method is called by the constructor to initialize the users instance variable
     */
    private Document initializeUsers() {
        Document initializedUsers = this.docBuilder.newDocument();
        initializedUsers.appendChild(initializedUsers.createElement("users"));
        return initializedUsers;
    } // end of initializeUsers

    /*
     * Accessor that returns the users instance variable
     * which contains a list of users currently connected to the server.
     */
    public Document getUsers() {
        return this.users;
    } //end of getUsers()

    /*
     * Adds a new user to the server. It gets the username from the UserThread object passed as an argument
     * Updates the server GUI with the new user's information, adds the username to the users Document object,
     * and adds the UserThread object to the onlineUsers vector.
     */
    public void addUser(UserThread newUserThread) {
        String userName = newUserThread.getUsername();
        this.gui.updateGUI("Received new user: " + userName);
        this.updateUsers(userName, "login");
        Element usersRoot = this.users.getDocumentElement();
        Element newUser = this.users.createElement("user");
        newUser.appendChild(this.users.createTextNode(userName));
        usersRoot.appendChild(newUser);
        this.gui.updateGUI("Added user: " + userName);
        this.onlineUsers.addElement(newUserThread);
    } // end of addUser

    /*
     * sends a message from one client to another.
     * Extracts the "fromClient" and "toClient" attributes from the message Document object,
     * finds the UserThread object for the recipient user, and sends the message to that user using send() method of the UserThread object.
     */
    public void sendMessage(Document msg) {
        //
        Element root = msg.getDocumentElement();
        String fromClient = root.getAttribute("from");
        String toClient = root.getAttribute("to");
        int index = this.findUserIndex(toClient);
        this.gui.updateGUI("Received message To: " + toClient + ",  From: " + fromClient);
        UserThread receiver = (UserThread)this.onlineUsers.elementAt(index);
        receiver.send(msg);
        this.gui.updateGUI("Sent message To: " + toClient + ",  From: " + fromClient);
    } // end of sendMessage

    public void sendBroadcast(Document broadcastMSG) {
        Element rootElement = broadcastMSG.getDocumentElement();
        String fromClient = rootElement.getAttribute("from");
        String toClient = null;

        NodeList nodeListToClients = broadcastMSG.getElementsByTagName("*");
        for (int i = 0; i < nodeListToClients.getLength(); i++) {
            Node thisNode = nodeListToClients.item(i);
            if (thisNode instanceof Element) {
                Element element = (Element) thisNode;
                String toAttr = element.getAttribute("to");
                if (toAttr != null && !toAttr.isEmpty()) {
                    toClient = toAttr;
                    int index = this.findUserIndex(toClient);
                    UserThread userReceiver = (UserThread) this.onlineUsers.elementAt(index);
                    userReceiver.send(broadcastMSG);
                } // end of nested - if
            } // end of if
        } // end of for-loop
        this.gui.updateGUI("\n" + fromClient + " successfully sent broadcast message to all users!");
    }

    /*
     * Notifies all online users of a change in the user list
     * It creates a new Document object with an "update" root element
     * Adds a "userName" element with the specified username
     * Sets the "type" attribute of the "update" element to the specified type (either "login" or "logout")
     * And sends the Document object to all connected clients; hence updates the users
     */
    public void updateUsers(String userName, String type) {
        Document doc = this.docBuilder.newDocument();
        Element root = doc.createElement("update");
        Element elementUser = doc.createElement("user");
        doc.appendChild(root);
        root.setAttribute("type", type);
        root.appendChild(elementUser);
        elementUser.appendChild(doc.createTextNode(userName));

        for(int i = 0; i < this.onlineUsers.size(); ++i) {
            UserThread receiver = (UserThread)this.onlineUsers.elementAt(i);
            receiver.send(doc);
        }

        this.gui.updateGUI("\nNotified online users of " + userName + "'s " + type);
    } // end of updateUsers

    /*
     * Searches the onlineUsers vector for the index of the UserThread object with the specified username.
     */
    public int findUserIndex(String userName) {
        for(int i = 0; i < this.onlineUsers.size(); ++i) {
            UserThread current = (UserThread)this.onlineUsers.elementAt(i);
            if (current.getUsername().equals(userName)) {
                return i;
            }
        }

        return -1;
    } // end of findUserIndex()

    /*
     * Generally acts as the opposite of the addUser() method
     * Removes a user from the server. It finds the index of the UserThread object for the user, removes the UserThread object
     * from the onlineUsers vector, removes the username from the users Document object
     * and notifies all online users of the change in the user list.
     */
    public void removeUser(String userName) {
        int index = this.findUserIndex(userName);
        this.onlineUsers.removeElementAt(index);
        NodeList userElements = this.users.getDocumentElement().getElementsByTagName("user");

        for(int i = 0; i < userElements.getLength(); ++i) {
            String str = userElements.item(i).getFirstChild().getNodeValue();
            if (str.equals(userName)) {
                this.users.getDocumentElement().removeChild(userElements.item(i));
            }
        }

        this.gui.updateGUI("\nRemoved user: " + userName);
        this.updateUsers(userName, "logout");
    } // end of removeUser() method

    /**
     * Method creates a document that has a tag name "destroy"
     * Essentially prompts all clients that the server has been shut down
     * Terminates all GUIs related to Client functions
     */
    public void terminateClient() {
        Document terminator = docBuilder.newDocument();
        Element terminationTag = terminator.createElement("destroy");
        terminator.appendChild(terminationTag);
        for (UserThread user : clients) {
            user.send(terminator);
        }
        clients.clear();
    } // end of terminateClient()

    /**
     * List the group chats that username is in
     * @param username to be used to know what to read in the nodes
     */
    public void listGroupChats(String username) { // this could be a public Vector<String> and returns group
        try {
            this.dbFactory = DocumentBuilderFactory.newInstance();
            this.docBuilder = this.dbFactory.newDocumentBuilder();

            File fPath = new File("res/groupchats.xml");
            Document doc = docBuilder.parse(fPath);

            Element root = doc.getDocumentElement();

            NodeList groupChatNodes = root.getElementsByTagName("group");
            for (int i = 0; i < groupChatNodes.getLength(); i++) {
                Element groupElement = (Element) groupChatNodes.item(i);
                NodeList userNameNodes = groupElement.getElementsByTagName("userName");
                for (int x = 0; x < userNameNodes.getLength(); x++) {
                    String currentUser = userNameNodes.item(x).getTextContent();
                    if (currentUser.equals(username)) {
                        String groupName = groupElement.getElementsByTagName("name").item(0).getTextContent();
                        this.groups.add(groupName);
                        break;
                    }
                }
            }
        } catch (ParserConfigurationException | IOException | SAXException e) {
            e.printStackTrace();
        }
    }

    public synchronized void logPrivateMsgToXML(Object obj) {
        TextMessage log = (TextMessage) obj;
        String sender = log.getSender();
        String text = log.getText();
        String time = log.getTime();
        String recipient = log.getRecipient();

        try {
            File logPMPath = new File("res/privatechatlog.xml");
            this.dbFactory = DocumentBuilderFactory.newInstance();
            this.docBuilder = this.dbFactory.newDocumentBuilder();
            Document privateMDoc = docBuilder.parse(logPMPath);

            Element root = privateMDoc.getDocumentElement();
            Element msgElem = privateMDoc.createElement("message");
            Element senderElem = privateMDoc.createElement("sender");
            Element textElem = privateMDoc.createElement("text");
            Element timeElem =  privateMDoc.createElement("time");
            Element recipientElem = privateMDoc.createElement("recipient");

            // Appends an element to a node
            senderElem.appendChild(privateMDoc.createElement(sender));
            textElem.appendChild(privateMDoc.createElement(text));
            timeElem.appendChild(privateMDoc.createElement(time));
            recipientElem.appendChild(privateMDoc.createElement(recipient));
            msgElem.appendChild(senderElem);
            msgElem.appendChild(textElem);
            msgElem.appendChild(timeElem);
            msgElem.appendChild(recipientElem);
            root.appendChild(msgElem);

            DOMSource domSource = new DOMSource(privateMDoc);
            StreamResult result = new StreamResult(logPMPath);
            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            Transformer transformer = transformerFactory.newTransformer();
            transformer.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "no");
            transformer.setOutputProperty(OutputKeys.INDENT, "yes");
            transformer.transform(domSource, result);
            privateMDoc.getDocumentElement().normalize();

        } catch (ParserConfigurationException | IOException | SAXException | TransformerException e) {
            e.printStackTrace();
        }
    }

    /**
     * Method that writes the messages receive in a group chat into an XML file
     * @param obj of a group chat conversation
     */
    public synchronized void logGroupChatMsgToXML(Object obj) {
        GroupTextMessage log = (GroupTextMessage) obj;
        String groupName = log.getGroupName();
        String sender = log.getSender();
        String conversation = log.getTxtMsg();
        String time = log.getTime();

        try {
            File logGCPath = new File ("res/groupchatlog.xml");
            this.dbFactory = DocumentBuilderFactory.newInstance();
            this.docBuilder = this.dbFactory.newDocumentBuilder();
            Document groupDoc = docBuilder.parse(logGCPath);

            Element root = groupDoc.getDocumentElement();
            Element groupNameElem = groupDoc.createElement("groupName");
            Element msgElem = groupDoc.createElement("message");
            Element textElem = groupDoc.createElement("text");
            Element timeElem = groupDoc.createElement("time");
            Element senderElem = groupDoc.createElement("sender");

            // Appends an element to a node
            groupNameElem.appendChild(groupDoc.createElement(groupName));
            senderElem.appendChild(groupDoc.createElement(sender));
            textElem.appendChild(groupDoc.createElement(conversation));
            timeElem.appendChild(groupDoc.createElement(time));
            msgElem.appendChild(groupNameElem);
            msgElem.appendChild(textElem);
            msgElem.appendChild(timeElem);
            msgElem.appendChild(senderElem);
            root.appendChild(msgElem);

            // Writes the log conversation
            //--> these instances can be global, so it can be used for other methods of logging
            DOMSource domSource = new DOMSource(groupDoc);
            StreamResult streamResult = new StreamResult(logGCPath);
            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            Transformer transformer = transformerFactory.newTransformer();
            // Formatting properties for the XML file
            transformer.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "no");
            transformer.setOutputProperty(OutputKeys.INDENT, "yes");
            transformer.transform(domSource, streamResult);
            groupDoc.getDocumentElement().normalize();
        } catch (ParserConfigurationException | IOException | SAXException | TransformerException e) {
            e.printStackTrace();
        }
    }

    public Vector<TextMessage> getPMLog() {
        Vector<TextMessage> pmLog = new Vector<>();

        try {
            File pmPath = new File("res/privatechatlog.xml");
            this.dbFactory = DocumentBuilderFactory.newInstance();
            this.docBuilder = this.dbFactory.newDocumentBuilder();
            Document pmLogD = docBuilder.parse(pmPath);

            NodeList nodeList = pmLogD.getElementsByTagName("message");
            for (int i = 0; i < nodeList.getLength(); i++) {
                Element message = (Element) nodeList.item(i);
                String xmlMessage = message.getElementsByTagName("text").item(0).getTextContent();
                String xmlTime = message.getElementsByTagName("time").item(0).getTextContent();
                String xmlSender = message.getElementsByTagName("sender").item(0).getTextContent();
                String xmlRecipient = message.getElementsByTagName("recipient").item(0).getTextContent();

                pmLog.add(new TextMessage(xmlSender, xmlRecipient, xmlMessage,xmlTime));
            }

        } catch (ParserConfigurationException | IOException | SAXException e) {
            e.printStackTrace();
        }
        return pmLog;
    }

    /**
     Send all the group chat logs as a vector of type GroupTextMessage
     * It outputs to the client, to be able to print out the past conversation to the members
     * @return the attributes in a group chat
     */
    public Vector<GroupTextMessage> getGroupChatLog() {
        Vector<GroupTextMessage> convoLog = new Vector<>();

        try {
            File fPath = new File("res/groupchatlog.xml");
            this.dbFactory = DocumentBuilderFactory.newInstance();
            this.docBuilder = this.dbFactory.newDocumentBuilder();
            Document logDoc = docBuilder.parse(fPath);

            NodeList nodeList = logDoc.getElementsByTagName("message");
            for (int i = 0; i<nodeList.getLength(); i++) {
                Element message = (Element) nodeList.item(i);
                String xmlGroupName = message.getElementsByTagName("groupName").item(0).getTextContent();
                String xmlMessage = message.getElementsByTagName("txtMsg").item(0).getTextContent();
                String xmlTime = message.getElementsByTagName("time").item(0).getTextContent();
                String xmlSender = message.getElementsByTagName("sender").item(0).getTextContent();

                convoLog.add(new GroupTextMessage(xmlGroupName, xmlSender, xmlMessage, xmlTime));
            }

        } catch (ParserConfigurationException | IOException | SAXException e) {
            e.printStackTrace();
        }
        return convoLog;
    }

    public boolean isServerAvailable(){
        return isServerAvailable;
    }

    public synchronized void removeUser(UserThread user) {
        clients.remove(user);
    }

    /*
     * Creates a new MessengerServer object
     * Adds a WindowListener to the server GUI to handle window closing events Starts the server by calling the runServer() method.
     */
    public static void main(String[] args) {
        MessengerServer server = new MessengerServer();
        //server.runServer();
    }

}

