package client;

import account.User;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

import javax.swing.*;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;

public class Conversation extends JFrame {

    // Attributes
    private MessengerMenu clientStatus;
    private MessengerClient messClient;
    private JTextArea display;
    private JTextField message;
    private JButton enter;
    private JPanel messageArea;
    private GridLayout messageAreaLayout;
    private String recipient;


    /**
     * The constructor takes in the recipient of the message, the client status of the user, and the messenger client as arguments.
     * It creates a new JFrame to display the conversation between two users and sets the title to "username's conversation with recipient".
     * It initializes instance variables such as recipient, stat, client, and creates a container for the frame.
     * It then sets up the display area, message input area, and send button.
     * @param recipient client that receives messages
     * @param stat client status of the user
     * @param messClient MessengerClient object
     */
    public Conversation(String recipient, MessengerMenu stat, MessengerClient messClient) {
        super(stat.getUser() + "'s conversation with " + recipient);
        this.recipient = recipient;
        this.clientStatus = stat;
        this.messClient = messClient;
        Container container = this.getContentPane();
        Font font = new Font("SansSerif", 1, 14);
        this.display = new JTextArea();
        this.display.setLineWrap(true);
        this.display.setEditable(false);
        this.display.setFont(font);
        container.add(new JScrollPane(this.display), "Center");
        this.messageArea = new JPanel();
        this.messageArea.setLayout(new GridLayout(2, 1));
        this.message = new JTextField(20);
        this.message.setText("");
        this.messageArea.add(this.message);

        this.message.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                Conversation.this.sendMessage();
            }
        });

        this.enter = new JButton("Send");
        this.messageArea.add(this.enter);
        container.add(this.messageArea, "South");

        this.enter.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                Conversation.this.sendMessage();
            }
        });

        this.addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e) {
                Conversation.this.messClient.removeConversation(Conversation.this.recipient);
            }
        });
        this.setSize(400, 200);
        this.show();
        this.messClient.addConversation(this);
    } // end of Conversation constructor

    /**
     * This method returns the recipient of the conversation.
     * @return target recipient
     */
    public String getRecipient() {
        return this.recipient;
    } //end of getRecipient

    /**
     * Disables the message input area and send button
     * disabling the user from sending messages
     */
    public void disableConversation() {
        this.message.setEnabled(false);
        this.enter.setEnabled(false);
    } // end of disableConversation()

    /**
     * Takes a string convDialogue and appends it to the display area of the conversation
     * It adds a newline character after the convDialogue string to ensure that each message appears on a new line
     * @param convDialogue
     */
    public void updateGUI(String convDialogue) {
        this.display.append(convDialogue + "\n");
    }

    /**
     * Gets the text from the message input area, creates an XML document with the message information
     * Sends the message to the messenger client, and updates the display area.
     * Checks if the input field is empty or not.
     * If it's not empty, it creates an instance of DocumentBuilderFactory to create a new XML document.
     * It then adds a new message element to the document and sets
     * to and from attributes to the recipient and the sender, respectively.
     * It then adds the text from the message input area as a child element of message.
     * The XML document is then sent to the messenger client using send() method.
     * Finally, the message is appended to the display area using the updateGUI() method and the message input area is cleared.
     */
    public void sendMessage() {
        String msgToSend = this.message.getText();
        if (!msgToSend.equals("")) {
            DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();

            try {
                DocumentBuilder docBuilder = dbFactory.newDocumentBuilder();
                Document docSendMessage = docBuilder.newDocument();
                Element rootElem = docSendMessage.createElement("message");
                rootElem.setAttribute("to", this.recipient);
                rootElem.setAttribute("from", this.clientStatus.getUser());
                rootElem.appendChild(docSendMessage.createTextNode(msgToSend));
                docSendMessage.appendChild(rootElem);
                this.messClient.send(docSendMessage);
                this.updateGUI(this.clientStatus.getUser() + ":  " + msgToSend);
                this.message.setText("");
            } catch (ParserConfigurationException var6) {
                var6.printStackTrace();
            }
        }
    } //end of sendMessage()

        public void run(Socket socket) {
            Socket cSocket = socket;
            try {

                ObjectInputStream in = new ObjectInputStream(cSocket.getInputStream());
                ObjectOutputStream out = new ObjectOutputStream(cSocket.getOutputStream());

                Object inputObject;
                while ((inputObject = in.readObject()) != null) {
                    if (inputObject instanceof User) {
                        String username = ((User) inputObject).getUsername();
                        String password = ((User) inputObject).getPassword();
                        if (verifyUser(username, password)) { // method should check if username and password exists
                            out.writeObject(true);
                        } else {
                            out.writeObject(false);
                        }
                    } else if (inputObject instanceof TextMessage) { // for
                        String sender = ((TextMessage) inputObject).getSender();
                        String recipient = ((TextMessage) inputObject).getRecipient();
                        String message = ((TextMessage) inputObject).getRecipient();
                        String typeOfMsg = ((TextMessage) inputObject).getTypeOfMsg();
                        if (typeOfMsg.equals("pm")) {
                            // write to xml

                            DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
                            try {
                                DocumentBuilder docBuilder = dbFactory.newDocumentBuilder();
                                Document docTypeOfMsg = docBuilder.newDocument();
                                Element rootElem = docTypeOfMsg.createElement("type");
                                // set attributes
                                docTypeOfMsg.appendChild(rootElem);
                                this.messClient.send(docTypeOfMsg);

                            } catch (ParserConfigurationException e) {
                                e.printStackTrace();
                            }

                        } else if (typeOfMsg.equals("gc")) {

                        } else if (typeOfMsg.equals("bcm")) {

                        }
                    }

                    in.close();
                    out.close();
                    cSocket.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }

    private boolean verifyUser(String username, String password) {
            return false;
    }

} // end of Conversation class


