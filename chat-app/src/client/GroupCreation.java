package client;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

import javax.swing.*;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import java.awt.*;
import java.awt.event.*;
import java.io.File;
import java.util.Vector;

public class GroupCreation extends JFrame {

    // Fields
    private MessengerMenu status;
    private MessengerClient client;
    private JTextArea display;
    private JPanel messageDisplayArea;
    private JLabel usersToAdd;
    private JButton createGroupChat;
    private JList<String> lahtUsersList;
    private DefaultListModel<String> lahtUsersModel;
    private JList<String> addedUsersList;
    private DefaultListModel<String> addedUsersModel;

    private JTextField groupNameField;
    private JLabel groupNameHeading;
    private DocumentBuilderFactory dbFactory;
    private DocumentBuilder docBuilder;
    private TransformerFactory tFactory;
    private Transformer transformer;

    public GroupCreation(MessengerMenu status, MessengerClient client) {
        super("GC Creation");

        this.status = status;
        this.client = client;
        // Holds the text fields and labels
        Container container = this.getContentPane();
        container.setLayout(new GridBagLayout());

        Font font = new Font("SansSerif", 1, 14);

        // Object to configure the layout
        GridBagConstraints c = new GridBagConstraints();
        c.insets = new Insets(3, 3, 3, 3);
        c.weightx = 1; // Overrided to all
        c.weighty = 1; // Overrided to all

        this.groupNameHeading = new JLabel("Enter Group Name:");
        c.gridx = 0;
        c.gridy = 0;
        c.ipadx = 5;
        c.ipady = 5;
        container.add(groupNameHeading, c);


        this.groupNameField = new JTextField();
        c.gridx = 1;
        c.gridy = 0;
        c.ipadx = 5;
        c.ipady = 5;
        c.gridwidth = 10;
        c.fill = GridBagConstraints.HORIZONTAL;
        container.add(groupNameField, c);

        this.usersToAdd = new JLabel("Select Users to Add:");
        c.gridx = 0;
        c.gridy = 1;
        c.ipadx = 5;
        c.ipady = 5;
        c.gridwidth = 10;
        c.fill = GridBagConstraints.HORIZONTAL;
        container.add(this.usersToAdd, c);

        NodeList userElements = this.client.getUsers().getDocumentElement().getElementsByTagName("user");
        int numberOfUsers = userElements.getLength();
        this.lahtUsersModel = new DefaultListModel<>();
        for (int i = 0; i < numberOfUsers; ++i) {
            String currentUser = userElements.item(i).getFirstChild().getNodeValue();
            this.lahtUsersModel.addElement(currentUser);
        }
        this.lahtUsersList = new JList<>(this.lahtUsersModel);
        this.lahtUsersList.setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);
        this.lahtUsersList.addMouseListener(new MouseAdapter() {
            public void mouseClicked(MouseEvent e) {
                if (e.getClickCount() == 1) {
                    int[] selectedIndices = lahtUsersList.getSelectedIndices();
                    for (int i : selectedIndices) {
                        String currentUser = lahtUsersModel.getElementAt(i);
                        addedUsersModel.addElement(currentUser);
                    }
                }
            }
        });
        c.gridx = 0;
        c.gridy = 2;
        c.ipadx = 5;
        c.ipady = 50;
        c.gridwidth = 10;
        c.fill = GridBagConstraints.BOTH;
        container.add(new JScrollPane(this.lahtUsersList), c);

        this.addedUsersModel = new DefaultListModel<>();
        this.addedUsersList = new JList<>(this.addedUsersModel);
        c.gridx = 1;
        c.gridy = 2;
        c.ipadx = 5;
        c.ipady = 50;
        c.gridwidth = 10;
        c.fill = GridBagConstraints.BOTH;
        container.add(new JScrollPane(this.addedUsersList), c);

        this.display = new JTextArea();
        this.display.setLineWrap(true);
        this.display.setEditable(false);
        this.display.setFont(font);
        c.gridx = 0;
        c.gridy = 3;
        c.ipadx = 5;
        c.ipady = 5;
        c.gridwidth = 10;
        c.fill = GridBagConstraints.HORIZONTAL;
        container.add(new JScrollPane(this.display), c);

        this.createGroupChat = new JButton("Create");
        this.createGroupChat.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                GroupCreation.this.createGroup();
            }
        });
        c.gridx = 1;
        c.gridy = 3;
        c.ipadx = 5;
        c.ipady = 5;
        c.gridwidth = 10;
        c.fill = GridBagConstraints.HORIZONTAL;
        container.add(this.createGroupChat, c);

        this.setSize(400, 300);
        this.setVisible(true);
    }

    public void createGroup() {
        String groupName = groupNameField.getText();
        saveGCNameToXML(groupName); // Calls out the method of parsing into XML File
        // A message dialog will appear if it has been successful
        JFrame frame = new JFrame("Notification");
        frame.setSize(300, 150);
        JOptionPane.showMessageDialog(frame,"Group has been SUCCESSFULLY encoded and created!");
        // Implementation to create a group chat
    }

    // Method to save the group names inputted to an XML file
    // --> this should be improved to also the members, after the error has been resolved
    private void saveGCNameToXML(String groupName) {
        try {
            File groupsFPath = new File ("res/groups.xml");

            // Creates a DocumentBuilderFactory to parse attributes into an XML file
            this.dbFactory = DocumentBuilderFactory.newInstance();
            this.docBuilder = this.dbFactory.newDocumentBuilder();

            // Creates a new document
            Document groupsDoc = docBuilder.newDocument();

            // Creates a root element
            Element rootElement = groupsDoc.createElement("group");
            groupsDoc.appendChild(rootElement);

            // Create a group name element
            Element nameElement = groupsDoc.createElement("name");
            nameElement.appendChild(groupsDoc.createTextNode(groupName));
            rootElement.appendChild(nameElement);

            // Writes the document to an XML file
            this.tFactory = TransformerFactory.newInstance();
            this.transformer = tFactory.newTransformer();
            DOMSource source = new DOMSource(groupsDoc);
            StreamResult result = new StreamResult(groupsFPath);
            transformer.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "no");
            transformer.setOutputProperty(OutputKeys.INDENT, "yes");
            transformer.transform(source, result);
            groupsDoc.getDocumentElement().normalize();

        } catch (ParserConfigurationException | TransformerException e) {
            e.printStackTrace();
        }
    }
}