package client;

import org.w3c.dom.Document;
import org.w3c.dom.Element;

import javax.swing.*;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;


public class Broadcast extends JFrame {

    //Fields
    private MessengerClient client;
    private MessengerMenu clientStatus;
    private String Broadcaster;
    private JTextField message;
    private JTextArea display;
    private JPanel messageDisplayArea;
    private JButton Send;
    private JList onlineUsersList;


    public Broadcast(String Broadcaster, MessengerClient client, MessengerMenu clientStatus) {
        super("Broadcast Message");
        this.Broadcaster = Broadcaster;
        this.clientStatus = clientStatus;
        this.client = client;
        Container container = this.getContentPane();
        Font font = new Font("SansSerif", 1, 14);
        this.display = new JTextArea();
        this.display.setLineWrap(true);
        this.display.setEditable(false);
        this.display.setFont(font);
        container.add(new JScrollPane(this.display), "Center");
        this.messageDisplayArea = new JPanel();
        this.messageDisplayArea.setLayout(new GridLayout(2, 1));

        //Input
        this.message = new JTextField(20);
        this.message.setText("");
        this.messageDisplayArea.add(this.message);

        this.Send = new JButton("Broadcast");
        this.messageDisplayArea.add(this.Send);
        container.add(this.messageDisplayArea, "South");


        this.Send.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                Broadcast.this.BroadcastMsg();
                Broadcast.this.dispose();
            }
        });

        this.addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e) {

            }
        });
        this.setSize(400, 200);
        this.show();
        //this.client.addConversation(this); //make a new method that adds a pop up broadcast window in Client
    }

    public void BroadcastMsg() {
        this.onlineUsersList = clientStatus.getOnlineUsersList();

        String msgToBroadcast = this.message.getText();
        DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();

        try {
            if(!msgToBroadcast.equals("")) {
                DocumentBuilder builder = dbFactory.newDocumentBuilder();
                Document containsBroadcast = builder.newDocument();
                Element rootElem = containsBroadcast.createElement("broadcast");
                rootElem.setAttribute("from", this.clientStatus.getUser());
                rootElem.appendChild(containsBroadcast.createTextNode(msgToBroadcast));

                for (int i = 0; i < onlineUsersList.getModel().getSize(); i++) {
                    String user = (String) onlineUsersList.getModel().getElementAt(i);
                    Element childElement = containsBroadcast.createElement("user");
                    childElement.setAttribute("to", user);
                    rootElem.appendChild(childElement);
                }

                containsBroadcast.appendChild(rootElem);
                this.client.send(containsBroadcast);
                this.updateGUI(this.clientStatus.getUser() + " broadcasted:  " + msgToBroadcast);
                this.message.setText("");
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }

    public void updateGUI(String broadcastDialogue){
        this.display.append(broadcastDialogue + "\n");
    }

}
