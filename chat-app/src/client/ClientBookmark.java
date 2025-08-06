package client;

import javax.xml.parsers.*;
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.util.*;
import java.io.File;
import org.w3c.dom.*;


import javax.xml.transform.*;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;


public class ClientBookmark extends JFrame {
    // fields for bookmark method
    private JList<String> contactsList;
    private JList<String> offlineList;
    private JList<String> bookmarkedList;
    private DefaultListModel<String> offlineModel;
    private DefaultListModel<String> bookmarkModel;
    private JButton bookmarkButton;
    private JButton unbookmarkButton;
    private JButton refreshButton;
    private ArrayList<String> bookmarks;
    private DefaultListModel<String> allUsers = new DefaultListModel<>();


    ClientBookmark() {
        setTitle("Bookmarking GUI");
        setSize(500, 400);
        setDefaultCloseOperation(EXIT_ON_CLOSE);

        // Set up the offline list
        offlineModel = new DefaultListModel<String>();
        offlineModel.addElement("User 1");
        offlineModel.addElement("User 2");
        offlineModel.addElement("User 3");
        offlineList = new JList<>(offlineModel);
        offlineList.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);

        // initialize the bookmark list
        bookmarks = new java.util.ArrayList<>();
        // Set up the bookmarked list
        bookmarkModel = new DefaultListModel<>();
        bookmarkedList = new JList<>(bookmarkModel);
        JScrollPane bookmarkedListScrollPane = new JScrollPane(bookmarkedList);
        // call the bookmarks list
        loadBookmarks();

        // Set up the contacts list
        allUsers = new DefaultListModel<>();
        readContactsFromXML(new java.io.File("res/users.xml")); // Replace with your XML file name
        contactsList = new JList<>(allUsers);
        contactsList.setVisibleRowCount(15);
        contactsList.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        contactsList.addListSelectionListener(e -> {
            if (!e.getValueIsAdjusting()) {
                updateButtons();
            }
        });

        // Set up the buttons
        bookmarkButton = new JButton("Bookmark");
        unbookmarkButton = new JButton("Unbookmark");
        refreshButton = new JButton("Refresh");


        bookmarkButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String selectedContact = contactsList.getSelectedValue();
                if (selectedContact != null && !bookmarks.contains(allUsers)) {
                    bookmarkModel.addElement(selectedContact);
                    saveBookmarks(new java.io.File("bookmarks.xml"));
                    updateButtons();
                }
            }
        });

        unbookmarkButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String selectedBookmark = (String)JOptionPane.showInputDialog( ClientBookmark.this,
                        "Select bookmark to remove:",
                        "Unbookmark",
                        JOptionPane.PLAIN_MESSAGE,
                        null,
                        bookmarks.toArray(),
                        null);
                if (selectedBookmark != null) {
                    bookmarks.remove(selectedBookmark);
                    saveBookmarks(new java.io.File("bookmarks.xml"));
                    updateButtons();
                }
            }
        });

        refreshButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                readContactsFromXML(new java.io.File("res/users.xml")); // Replace with your XML file name
                updateButtons();
            }
        });

        JScrollPane contactsScrollPane = new JScrollPane(contactsList);
        contactsScrollPane.setBorder(BorderFactory.createEmptyBorder());
        contactsScrollPane.setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_AS_NEEDED);

        // Set up the layout
        JPanel contactsPanel = new JPanel(new BorderLayout());
        contactsPanel.setBorder(BorderFactory.createTitledBorder("Contacts"));
        contactsPanel.add(contactsScrollPane, BorderLayout.CENTER);
        JPanel buttonsPanel = new JPanel(new GridLayout(3, 1));
        buttonsPanel.add(bookmarkButton);
        buttonsPanel.add(unbookmarkButton);
        buttonsPanel.add(refreshButton);
        contactsPanel.add(buttonsPanel, BorderLayout.EAST);

        JPanel offlinePanel = new JPanel(new BorderLayout());
        offlinePanel.setBorder(BorderFactory.createTitledBorder("Offline Users"));
        JScrollPane offlineScrollPane = new JScrollPane(offlineList);
        offlinePanel.add(offlineScrollPane, BorderLayout.CENTER);

        JPanel mainPanel = new JPanel(new GridLayout(1, 2));
        mainPanel.add(contactsPanel);
        mainPanel.add(offlinePanel);

        add(mainPanel);
        updateButtons();

    }

    private void updateButtons() {
        String selectedContact = contactsList.getSelectedValue();
        boolean canBookmark = selectedContact != null && !bookmarks.contains(selectedContact);
        boolean canUnbookmark = selectedContact != null && bookmarks.contains(selectedContact);
        bookmarkButton.setEnabled(canBookmark);
        unbookmarkButton.setEnabled(canUnbookmark);
    }

    /*
    public void readContactsFromXML(File file) {
        try {
            java.io.InputStream inputStream = new java.io.FileInputStream(file);
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document document = builder.parse(inputStream);
            Element root = document.getDocumentElement();
            NodeList contacts = root.getElementsByTagName("user");
            for (int i = 0; i < contacts.getLength(); i++) {
                Node contact = contacts.item(i);
                String name = ((Element) contact).getAttribute("user");
                String status = ((Element) contact).getAttribute("Status");
                if (status.equals("Online")) {
                    clientStatus = new client.MessengerMenu(name, client);
                    clientStatus.onlineUsers.add(name);
                    allUsers.addElement(name);
                }
                else {
                    offlineModel.addElement(name);
                }
            }
        } catch (javax.xml.parsers.ParserConfigurationException e) {
            e.printStackTrace();
        } catch (java.io.IOException e) {
            e.printStackTrace();
        } catch (org.xml.sax.SAXException e) {
            e.printStackTrace();
        }
    }

     */


    private void readContactsFromXML(File xmlFile) {
        try {
            DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
            DocumentBuilder db = dbf.newDocumentBuilder();
            Document doc = db.parse(xmlFile);
            Element root = doc.getDocumentElement();
            doc.getDocumentElement().normalize();
            NodeList nodeList = root.getElementsByTagName("Users");
            allUsers.clear();

            for (int i = 0; i < nodeList.getLength(); i++) {
                Node userNode = nodeList.item(i);
                if (userNode.getNodeType() == Node.ELEMENT_NODE){
                    Element userElement = (Element)userNode;
                    String username = userElement.getAttribute("UserName");
                    allUsers.addElement(username);
                    contactsList.setModel(allUsers);
                }
            }
        }
        catch (javax.xml.parsers.ParserConfigurationException e) {
            e.printStackTrace();
        }
        catch (org.xml.sax.SAXException e) {
            e.printStackTrace();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }


    private void loadBookmarks() {
        try {
            java.io.InputStream inputStream = new java.io.FileInputStream("bookmarks.xml");
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document document = builder.parse(inputStream);
            Element root = document.getDocumentElement();
            NodeList bookmarksList = root.getElementsByTagName("Bookmark");
            for (int i = 0; i < bookmarksList.getLength(); i++) {
                String name = bookmarksList.item(i).getTextContent();
                bookmarks.add(name);
                bookmarkModel.addElement(name);
            }
        } catch (java.io.IOException e) {
            // ignore, no bookmarks file yet
        } catch (javax.xml.parsers.ParserConfigurationException e) {
            e.printStackTrace();
        } catch (org.xml.sax.SAXException e) {
            e.printStackTrace();
        }
    }

    public void saveBookmarks(File file) {
        try {
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document doc = builder.newDocument();
            Element root = doc.createElement("Bookmarks");
            for (String name : bookmarks) {
                Element bookmarkElement = doc.createElement("Bookmark");
                bookmarkElement.setTextContent(name);
                root.appendChild(bookmarkElement);
            }
            doc.appendChild(root);

            // Write the XML file
            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            Transformer transformer = transformerFactory.newTransformer();
            transformer.setOutputProperty(OutputKeys.INDENT, "yes");
            transformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", "4");
            DOMSource source = new DOMSource(doc);
            StreamResult result = new StreamResult(new File(String.valueOf(file)));
            transformer.transform(source, result);
        } catch (ParserConfigurationException | TransformerException e) {
            e.printStackTrace();
        }
    }
}