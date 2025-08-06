package server.controls;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

import javax.swing.*;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.util.ArrayList;

public class UnbanUser extends JFrame implements ActionListener {

    private JPanel panel;
    private ArrayList<JButton> buttons;
    private Document document;
    private DocumentBuilderFactory dbFactory;
    private DocumentBuilder docBuilder;
    private TransformerFactory tFactory;
    private Transformer transformer;

    public UnbanUser() {
        super("User List");
        //this.messServer = messServer;
        setSize(200,100);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setLocationRelativeTo(null);

        panel = new JPanel(new FlowLayout());
        buttons = new ArrayList<JButton>();
        add(panel, BorderLayout.CENTER);

        try {
            File usersFPath = new File ("res/users.xml");

            // Creates a DocumentBuilderFactory to parse attributes into an XML file
            this.dbFactory = DocumentBuilderFactory.newInstance();
            this.docBuilder = this.dbFactory.newDocumentBuilder();
            document = docBuilder.parse(usersFPath);
            NodeList userList = document.getElementsByTagName("user"); // Finds the attribute 'user'

            // Iterates the list of users
            for (int i = 0; i < userList.getLength(); i++) {
                Element user = (Element) userList.item(i);
                String isBanned = user.getElementsByTagName("isBanned").item(0).getTextContent();
                if (isBanned.equals("true")) { // Set 'false' if user is not banned from the server
                    // Display buttons to the server GUI
                    String username = user.getElementsByTagName("username").item(0).getTextContent();
                    JButton button = new JButton(username);
                    button.setActionCommand(username);
                    button.addActionListener(this);
                    panel.add(button);
                    buttons.add(button);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        setVisible(true);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        String username = e.getActionCommand();
        NodeList userList = document.getElementsByTagName("user");
        for (int i = 0; i < userList.getLength(); i++) {
            Element user = (Element) userList.item(i);
            String u = user.getElementsByTagName("username").item(0).getTextContent();
            if (u.equals(username)) {
                Element isBannedElement = (Element) user.getElementsByTagName("isBanned").item(0);
                isBannedElement.setTextContent("false");
                // --> --> statement that must print out a mssg that user has been unbanned
                break;
            }
        } try {
            // Writes the updated list of users and their status back to the XML file
            this.tFactory = TransformerFactory.newInstance();
            this.transformer = tFactory.newTransformer();
            DOMSource source = new DOMSource(document);
            StreamResult result = new StreamResult(new File("res/users.xml"));
            transformer.transform(source, result);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        // Revalidate GUI components with updates
        panel.removeAll();
        buttons.clear();
        NodeList updatedUserList = document.getElementsByTagName("user");
        for (int i = 0; i < updatedUserList.getLength(); i++) {
            Element user = (Element) updatedUserList.item(i);
            String isBanned = user.getElementsByTagName("isBanned").item(0).getTextContent();
            if (isBanned.equals("true")) {
                username = user.getElementsByTagName("username").item(0).getTextContent();
                JButton button = new JButton(username);
                button.setActionCommand(username);
                button.addActionListener(this);
                panel.add(button);
                buttons.add(button);
            }
        }
        panel.revalidate();
    }
}
