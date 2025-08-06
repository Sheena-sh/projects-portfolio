package account;

import gui.ServerGUI;
import org.apache.crimson.tree.XmlDocument;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import server.MessengerServer;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

/**
 *  represents a thread that handles communication with a single client in a server-client communication
 */
public class UserThread extends Thread {

    private Socket socket;
    private InputStream inputStream;
    private OutputStream outputStream;
    private MessengerServer server;
    private String username = "";
    private boolean isListening;
    private DocumentBuilderFactory dbFactory;
    private DocumentBuilder build;
    private boolean isServerAvailable;
    private ServerGUI gui;

    /**
     * A constructor that creates a new UserThread object with the specified Socket object and MessengerServer object.
     * @param socket connection
     * @param server MessengerServer object
     */
    public UserThread(Socket socket, MessengerServer server, ServerGUI gui) {
        try {
            // obtain the default parser
            dbFactory = DocumentBuilderFactory.newInstance();

            // get DocumentBuilder
            build = dbFactory.newDocumentBuilder();
        }
        catch (ParserConfigurationException pce) {
            pce.printStackTrace();
            System.exit( 1 );
        }

        // initialize variables
        this.socket = socket;
        this.server = server;
        this.isListening = true;
        this.gui = gui;

        // Check if the server is available
        this.isServerAvailable = server.isServerAvailable();

        // get inputStream and outputStream streams
        try {
            inputStream = this.socket.getInputStream();
            outputStream = this.socket.getOutputStream();
        }
        catch ( IOException e ) {
            e.printStackTrace();
            System.exit( 1 );
        }
    }

    /**
     *  A getter method that returns the username of the client.
     * @return username
     */
    public String getUsername() {
        return username;
    }

    /**
     * Handles incoming messages from the client
     * Parses the message, determines its type based on the root element, and invokes the appropriate method to handle the message.
     * @param message
     */
    public void messageReceived(Document message)
    {
        Element rootElement = message.getDocumentElement();

        if (rootElement.getTagName().equals("user")) {

            // if initial login, rootElement element is "user"
            // add user element to server's user document

            // test if user entered unique input name
            String inputName = rootElement.getFirstChild().getNodeValue();

            //Extract true userName and password from the sent buffer ...
            String userName = inputName.substring(0, inputName.indexOf("|")  );
            String password = inputName.substring(inputName.indexOf("|") + 1);
            int loginReferenceFlag = 0;

            if (server.findUserIndex(userName) != -1 ) {
                nameAlreadyInUse(); // not a unique name
            }
            else if ((loginReferenceFlag =  MessengerServer.userManager.checkUserExistence(new User(userName, password))) != MessengerServer.userManager.valValidLogin) {
                if( loginReferenceFlag == MessengerServer.userManager.valNameDoesNotExist) nameNotExists();
                else passwordIncorrect();
            }
            else {
                // unique name
                // send server's Document users
                send(server.getUsers());

                username = userName; // update username variable

                // add user to server
                server.addUser(this);
            }
        }
        else if (rootElement.getTagName().equals("message"))
            server.sendMessage( message );
        else if (rootElement.getTagName().equals("broadcast"))
            server.sendBroadcast(message);
        else if (rootElement.getTagName().equals("disconnect")) {
            isListening = false;
            // remove user from server
            server.removeUser(username);
        }
    }

    /**
     * Sends a message to the client indicating that the username entered is already in use.
     */
    private void nameAlreadyInUse() {
        Document forUniqueNameInput = build.newDocument();
        forUniqueNameInput.appendChild(forUniqueNameInput.createElement("nameInUse"));
        send( forUniqueNameInput );
    }


    /**
     * Sends a message to the client indicating that the username entered does not exist.
     */
    private void nameNotExists() {
        Document enterNewName = build.newDocument();
        enterNewName.appendChild(enterNewName.createElement( "nameNotExists" ) );
        send(enterNewName);
    }


    /**
     * Sends a message to the client indicating that the password entered is incorrect.
     */
    private void passwordIncorrect() {
        Document forIncorrectPass = build.newDocument();
        forIncorrectPass.appendChild(forIncorrectPass.createElement("passwordIncorrect"));
        send(forIncorrectPass);
    }


    /**
     * Sends a message to the client. It writes the message to the output stream of the client-server connection.
     * @param message
     */
    public void send(Document message) {
        try {
            ((XmlDocument)message).write(outputStream);
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     *  Listens for incoming messages from the client
     *  Reads messages from the input stream, parses them, and invokes the messageReceived() method to handle them
     *  If the keepListening flag is set to false
     *  The method closes the input and output streams and the connection
     */
    public void run() {
        try {
            int bufferSize = 0;
            System.out.println("UserThread's Listening for client requests...");

            while (isServerAvailable && !Thread.currentThread().isInterrupted()) {
                bufferSize = inputStream.available();

                if (bufferSize > 0) {
                    byte buffer[] = new byte[bufferSize];
                    inputStream.read(buffer);
                    InputSource src = new InputSource(new ByteArrayInputStream(buffer));
                    Document msg = build.parse(src);

                    if (msg != null)
                        messageReceived(msg);
                }
            }
            inputStream.close();
            outputStream.close();
            socket.close();
        }
        catch (SAXException e) {
            e.printStackTrace();
        }
        catch (IOException io) {
            io.printStackTrace();
        }
    } // end of run()
}
