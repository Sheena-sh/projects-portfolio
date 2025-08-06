package client;

// import statements

import org.apache.crimson.tree.XmlDocument;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import javax.swing.*;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.*;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Vector;


public class MessengerClient extends JFrame {

    private JTextField ip;
    private JLabel iplabel;
    // Instance variables for GUI, Controllers, I/O streams, MessengerMenu object, and document builders
    public JTextField name;
    private JLabel status;
    private JButton submit;
    private Socket clientSocket;
    private OutputStream output;
    private InputStream input;
    private JPasswordField password;
    private JLabel passLabel;
    private JLabel nameLabel;
    private boolean keepListening;
    private MessengerMenu clientStatus;
    private static MessengerMenu onlineUsers;
    private Document users;
    private Vector conversations;
    private DocumentBuilderFactory factory;
    private DocumentBuilder builder;
    private boolean isClientRunning = false;
    private String user;
    private boolean guiCreated = false;
    private JTextField searchClientsTextField;
    private JTextField searchConversationsTextField;
    private DefaultListModel<String> model;
    private MessengerClient client;

    private ArrayList<Conversation> convo;// for list of conversation

    /**
     *  Constructor of the MessengerClient class.
     *  It creates the graphical user interface for the messenger application.
     *  It initializes the variables declared above, sets their values and adds them to the GUI.
     *  Adds an action listener to the submit button that calls the loginUser() method when clicked.
     *
     */
    public MessengerClient() {
        super("Messenger Client");

        /**
         * For login
         */
        Container clientContainer = this.getContentPane();
        clientContainer.setLayout(null);
        this.nameLabel = new JLabel("Please enter your name: ");
        clientContainer.add(nameLabel);
        this.nameLabel.setText("Name");
        this.nameLabel.setBounds(7, 14, 49, 28);
        this.name = new JTextField(15);
        clientContainer.add(name);
        this.name.setBounds(105, 21, 112, 21);
        this.passLabel = new JLabel();
        clientContainer.add(passLabel);
        this.passLabel.setText("Password");
        this.passLabel.setBounds(7, 42, 98, 35);
        this.password = new JPasswordField();
        clientContainer.add(password);
        this.password.setColumns(15);
        this.password.setBounds(105, 49, 112, 21);
        this.iplabel = new JLabel();
        clientContainer.add(iplabel);
        this.iplabel.setText("IP Address");
        this.iplabel.setBounds(7,80,112,21);
        this.ip = new JTextField();
        clientContainer.add(ip);
        this.ip.setColumns(15);
        this.ip.setBounds(105, 82, 112, 21);

        this.submit = new JButton("Submit");
        this.submit.setEnabled(false);
        clientContainer.add(submit);
        this.submit.setBounds(7, 120, 217, 56);
        this.submit.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                MessengerClient.this.loginUser();
            }
        });

        this.status = new JLabel("Status: Not connected");
        clientContainer.add(status);
        this.status.setBounds(0, 190, 231, 21);

        this.addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e) {
                System.exit(0);
            }
        });

        this.setSize(244, 250);
        this.show();

        try {
            this.factory = DocumentBuilderFactory.newInstance();
            this.builder = this.factory.newDocumentBuilder();
        }
        catch (ParserConfigurationException var2) {
            var2.printStackTrace();
        }



    } // end of MessengerClient constructor

    /**
     * Code sets up a while loop to continuously listen for incoming messages from the server
     * If there are messages waiting to be read, it checks the size of the input buffer and reads the contents of the buffer into a byte array
     * The contents of the byte array are then parsed into an XML document using the DocumentBuilder object
     * and the messageReceived method is called with the resulting document as an argument.
     * While loop continues if no messages are waiting to be read by the buffer
     */
    /**
     * Code sets up a while loop to continuously listen for incoming messages from the server
     * If there are messages waiting to be read, it checks the size of the input buffer and reads the contents of the buffer into a byte array
     * The contents of the byte array are then parsed into an XML document using the DocumentBuilder object
     * and the messageReceived method is called with the resulting document as an argument.
     * While loop continues if no messages are waiting to be read by the buffer
     */
    public void runMessengerClient() {

        try {
            this.clientSocket = new Socket(InetAddress.getLocalHost(), 5000);
            this.status.setText(("Status: Connected to " + this.clientSocket.getInetAddress().getHostAddress()));
            this.output = this.clientSocket.getOutputStream();
            this.input = this.clientSocket.getInputStream();
            this.isClientRunning = true;
            this.submit.setEnabled(true);
            this.keepListening = true;

            while(this.keepListening) {
                int bufferSize = this.input.available();
                if (bufferSize > 0) {
                    byte[] buf = new byte[bufferSize];
                    this.input.read(buf);

                    if (buf.length > 0) {
                        String message = new String(buf);

                        if (message.startsWith("<?xml")) {
                            Document doc = this.builder.parse(new InputSource(new StringReader(message)));
                            this.messageReceivedFromS(doc);
                        }
                    }
                }
            } // end of while-loop
            this.input.close();
            this.output.close();
            this.clientSocket.close();
            System.exit(0);
        }
        catch (ConnectException ce) {
            System.err.println("Connection Error: Server connection not found.");
            JOptionPane.showMessageDialog(
                    this,
                    "Error: Unable to connect to server. Please try again later.",
                    "Connection Error", JOptionPane.ERROR_MESSAGE);
            MessengerClient.this.stopOnError();
        }
        catch (IOException ioe) {
            ioe.printStackTrace();
            System.exit(1);
        }
        catch (SAXException e) {
            e.printStackTrace();
        }

    } // end of runMessengerClient()

    /**
     * Method is called to terminate the MessengerClient GUI in an event
     * where the Client is being run and the server is unavailable
     * @throws IOException
     */
    public void stopOnError() {
        // Close any open sockets, streams, etc.
        try {
            this.isClientRunning = false;
            if (output != null)
                output.close();
            if (input != null)
                input.close();
            if (clientSocket != null)
                clientSocket.close();
            System.out.println("Client stopped!");
        }
        catch (IOException ioe) {
            ioe.printStackTrace();
            System.exit(1);
        }

        // Set the client status to "Not connected"
        this.status.setText("Status: Not connected");

        // Disable the submit button
        this.submit.setEnabled(false);

        // Close the window
        this.dispose();
    } // end of stopOnError

    /**
     * Creates a new Document object using the DocumentBuilder object
     * Appends a new Element node to the document
     * The new element has the tag name "user" and its text content is set to the concatenation of the name entered by the user
     * and the password entered by the user.
     * This document is then sent to the server using the send method.
     */
    public void loginUser() {
        Document userNameSubmit = this.builder.newDocument();
        Element root = userNameSubmit.createElement("user");
        userNameSubmit.appendChild(root);
        root.appendChild(userNameSubmit.createTextNode(this.name.getText() + "|" + new String(this.password.getPassword())));
        this.send(userNameSubmit);
    } // end of loginUser()

    // Accessor for users
    public Document getUsers() {
        return this.users;
    }// end of getUsers()

    /**
     * Sets the variable keepListening flag to false
     * Causes the while loop in the runMessengerClient method to exit
     */
    public void stopListening() {
        this.keepListening = false;
    } // end of stopListening()

    public void messageReceivedFromS(Document msgFromServer) {
        Element rootElement = msgFromServer.getDocumentElement();
        if (rootElement.getTagName().equals("nameInUse")) {
            javax.swing.JOptionPane.showMessageDialog(this, "That name is already in use.\nPlease enter a unique name.");
        }

        else if (rootElement.getTagName().equals("nameNotExists")) {
            javax.swing.JOptionPane.showMessageDialog(this, "UserName does not exist");
        }

        else if (rootElement.getTagName().equals("passwordIncorrect")) {
            javax.swing.JOptionPane.showMessageDialog(this, "Password Incorrect");
        }

        else if (rootElement.getTagName().equals("users")) {
            this.users = msgFromServer;
            this.clientStatus = new MessengerMenu(this.name.getText(), this);
            this.conversations = new java.util.Vector();
            this.hide();
        }

        else {
            String typeEvent;
            if (rootElement.getTagName().equals("update")) {
                typeEvent = rootElement.getAttribute("type");
                org.w3c.dom.NodeList userElt = rootElement.getElementsByTagName("user");
                String updatedUser = userElt.item(0).getFirstChild().getNodeValue();

                if (typeEvent.equals("login")) this.clientStatus.add(updatedUser);
                else {
                    this.clientStatus.remove(updatedUser);
                    int index = this.findConversationIndex(updatedUser);
                    if (index != -1) {
                        client.Conversation receiver = (client.Conversation)this.conversations.elementAt(index);
                        receiver.updateGUI(updatedUser + " logged out");
                        receiver.disableConversation();
                    }
                }
            }

            else if (rootElement.getTagName().equals("message")) {
                typeEvent = rootElement.getAttribute("from");
                String messageText = rootElement.getFirstChild().getNodeValue();
                int index = this.findConversationIndex(typeEvent);
                client.Conversation receiver;
                if (index != -1) {
                    receiver = (client.Conversation)this.conversations.elementAt(index);
                    receiver.updateGUI(typeEvent + ":  " + messageText);
                }
                else {
                    receiver = new client.Conversation(typeEvent, this.clientStatus, this);
                    receiver.updateGUI(typeEvent + ":  " + messageText);
                }
            }
            else if (rootElement.getTagName().equals("broadcast")) {

                String broadcaster = rootElement.getAttribute("from");
                String broadcastMsg = "";

                NodeList children = rootElement.getChildNodes();
                for (int i = 0; i < children.getLength(); i++) {
                    Node child = children.item(i);
                    if (child.getNodeType() == Node.TEXT_NODE){
                        broadcastMsg = child.getNodeValue();
                        break;
                    }
                }

                new BroadcastReceiver(broadcaster, this, this.clientStatus, broadcastMsg);

            }
            else if (rootElement.getTagName().equals("destroy")) {
                JOptionPane.showMessageDialog(this,
                        "Server has been shut down. Disconnecting...",
                        "Server Shutdown",
                        JOptionPane.INFORMATION_MESSAGE);
                System.exit(1);
            }
        }
    } // end of messageReceivedFromS(Document msgFromServer)

    public int findConversationIndex(String userName){
        for(int i = 0; i < this.conversations.size(); ++i) {
            Conversation current = (Conversation)this.conversations.elementAt(i);
            if (current.getRecipient().equals(userName)) {
                return i;
            }
        }
        return -1;
    }

    /**
     * Sends message to be sent to the chat server over a socket connection.
     * The Document is a message sent by the user, which includes the sender's name, the recipient's name, and the message content.
     * @param msgToBeSent document to be sent to chat server
     */
    public void send(Document msgToBeSent) {
        try {
            ((XmlDocument)msgToBeSent).write(this.output);
        }
        catch (IOException var3) {
            var3.printStackTrace();
        }
    } // end of send()

    /**
     * takes a Conversation parameter and adds it to the Vector of conversations.
     * @param newConversation Conversation object
     */
    public void addConversation(Conversation newConversation) {
        this.conversations.add(newConversation);
    }

    /**
     * Removes an existing conversation based on a username
     * @param userName recipient in conversation to be removed
     */
    public void removeConversation(String userName) {
        this.conversations.removeElementAt(this.findConversationIndex(userName));
    }

    /**
     * Creates an instance of MessengerClient and runs it.
     */
    public static void main(String[] args) {
        MessengerClient messengerC = new MessengerClient();
        messengerC.runMessengerClient();
        //messengerC.createGUI();
    } // end of main method
} // end of MessengerClient class

