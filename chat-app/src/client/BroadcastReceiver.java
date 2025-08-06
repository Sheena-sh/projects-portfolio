package client;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

public class BroadcastReceiver extends JFrame {

    //Fields
    //Fields
    private MessengerClient client;
    private MessengerMenu clientStatus;
    private String Broadcaster;
    private JTextArea display;
    private JPanel messageDisplayArea;
    private JButton okay;

    public BroadcastReceiver(String Broadcaster, client.MessengerClient client, client.MessengerMenu clientStatus, String message) {
        super("Broadcasted Message from: " + Broadcaster);
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

        this.okay = new JButton("Okay");
        this.messageDisplayArea.add(this.okay);
        container.add(this.messageDisplayArea, "South");
        this.display.append(message);

        this.okay.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                BroadcastReceiver.this.dispose();
            }
        });

        this.addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e) {
            }
        });
        this.setSize(300, 200);
        this.show();
    }

    public void updateGUI(String broadcastDialogue){
        this.display.append(broadcastDialogue + "\n");
    }

}
