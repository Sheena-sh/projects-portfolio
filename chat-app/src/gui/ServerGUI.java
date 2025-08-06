package gui;

import server.MessengerServer;
import server.ServerStartThread;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.util.ArrayList;

public class ServerGUI extends JFrame {

    private ArrayList<String> bannedUsers = new ArrayList<>();
    private JLabel serverStatus;
    private JTextArea serverDisplay;
    private JButton startServer;
    private JButton stopServer;
    private JButton banUserButton;
    private JButton unbanUserButton;
    private JPanel userListPanel;
    private JLabel userListHeader;

    public ServerGUI(MessengerServer ms) {
        super("Messenger Server");

        // Create the user interface for the server window
        Container serverContainer = this.getContentPane();
        serverContainer.setLayout(new BorderLayout());

        // Add the status label to the top of the window
        serverStatus = new JLabel("Status");
        serverContainer.add(serverStatus, BorderLayout.NORTH);

        // Add the server display text area to the center of the window, with scrolling
        serverDisplay = new JTextArea();
        serverDisplay.setLineWrap(true);
        serverDisplay.setEditable(false);
        JScrollPane scrollPane = new JScrollPane(serverDisplay);
        serverContainer.add(scrollPane, BorderLayout.CENTER);

        // Add the user list panel to the right of the window, with scrolling
        userListHeader = new JLabel("Users List");
        userListPanel = new JPanel(new GridLayout(0, 1));
        JScrollPane userListScrollPane = new JScrollPane(userListPanel);
        serverContainer.add(userListScrollPane, BorderLayout.EAST);
        this.startServer = new JButton("Start Server");
        this.stopServer = new JButton("Stop Server");

        this.startServer.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                ServerStartThread st = new ServerStartThread(ms);
                st.start();
                startServer.setEnabled(false);
                stopServer.setEnabled(true);
            }
        });

        this.stopServer.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                ms.stopServer();
                startServer.setEnabled(true);
                stopServer.setEnabled(false);
            }
        });


        // Add the ban and unban buttons to the bottom of the window
        this.banUserButton = new JButton("Ban User");
        banUserButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String userToBan = JOptionPane.showInputDialog("Enter username to ban:");
                if (userToBan != null) {
                    bannedUsers.add(userToBan);
                    updateGUI(userToBan + " has been banned.");
                }
            }
        });

        this.unbanUserButton = new JButton("Unban User");
        unbanUserButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String userToUnban = JOptionPane.showInputDialog("Enter username to unban:");
                if (userToUnban != null) {
                    if (bannedUsers.contains(userToUnban)) {
                        bannedUsers.remove(userToUnban);
                        updateGUI(userToUnban + " has been unbanned.");
                    } else {
                        updateGUI(userToUnban + " is not currently banned.");
                    }
                }
            }
        });

        JPanel buttonPanel = new JPanel(new GridLayout(1, 2, 10, 0));
        buttonPanel.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
        buttonPanel.add(banUserButton);
        buttonPanel.add(unbanUserButton);
        buttonPanel.add(banUserButton);
        buttonPanel.add(unbanUserButton);
        buttonPanel.add(startServer);
        buttonPanel.add(stopServer);
        serverContainer.add(buttonPanel, BorderLayout.SOUTH);
        stopServer.setEnabled(false);

        // Configure the window's size and close behavior, and show the window
        setSize(600, 400);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        addWindowListener(new WindowAdapter() {
            @Override
            public void windowClosing(WindowEvent e) {
                super.windowClosing(e);
                System.exit(0);
            }
        });
        setVisible(true);
    }

    // Appends the specified string to the serverDisplay JTextArea component on the server's GUI
    public void updateGUI(String s) {
        serverDisplay.append("\n" + s);
    }
}