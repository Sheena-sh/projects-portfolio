package client.gui;

import wordyApp.Player;
import wordyApp.Wordy;
import wordyApp.AlreadyLoggedIn;
import wordyApp.IncorrectCredentials;

import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.Clip;
import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.util.Objects;

public class ClientEntry extends JFrame {

    private final JTextField usernameField ;
    private final JPasswordField passwordField ;

    private static ClientEntry mainWindow;

    Wordy wordyImpl;
    Player player;

    public String username;

    public ClientEntry(Wordy wordyImpl) {
        super("Login");
        this.wordyImpl = wordyImpl;

        mainWindow = this;

        // Create a title panel with the Wordy icon
        JPanel titlePanel = new JPanel(new FlowLayout(FlowLayout.CENTER, 0, 30));
        titlePanel.setBackground(null);
        ImageIcon icon = new ImageIcon(Objects.requireNonNull(getClass().getResource("/client/gui/icons/icons8-microsoft-word-200.png")));
        JLabel iconLabel = new JLabel(icon);
        titlePanel.add(iconLabel);

        // Create a panel with the username label and text field
        JPanel usernamePanel = new JPanel(new FlowLayout(FlowLayout.CENTER, 20, 10));
        usernamePanel.setBackground(null);
        JLabel usernameLabel = new JLabel("Username:");
        usernameLabel.setForeground(Color.WHITE);
        Font labelFont = new Font("Book Antiqua", Font.PLAIN, 20);
        usernameLabel.setFont(labelFont);
        usernameField = new JTextField(20);
        usernameField.setFont(labelFont);
        usernamePanel.add(usernameLabel);
        usernamePanel.add(usernameField);

        // Create a panel with the password label and password field
        JPanel passwordPanel = new JPanel(new FlowLayout(FlowLayout.CENTER, 20, 10));
        passwordPanel.setBackground(null);
        JLabel passwordLabel = new JLabel("Password:");
        passwordLabel.setForeground(Color.WHITE);
        passwordLabel.setFont(labelFont);
        passwordField = new JPasswordField(20);
        passwordField.setFont(labelFont);
        passwordPanel.add(passwordLabel);
        passwordPanel.add(passwordField);

        // Create a panel with the login button
        JPanel buttonPanel = new JPanel(new FlowLayout(FlowLayout.CENTER, 0, 20));
        buttonPanel.setBackground(null);
        JButton loginButton = new JButton("LOGIN");
        loginButton.setPreferredSize(new Dimension(200, 40));
        Font buttonFont = new Font("Book Antiqua", Font.BOLD, 20);
        loginButton.setFont(buttonFont);
        loginButton.setFocusPainted(false);
        loginButton.setBackground(Color.WHITE);
        loginButton.setForeground(Color.CYAN.darker());
        loginButton.addActionListener(new LoginButtonListener());
        buttonPanel.add(loginButton);

        // Add all panels to the main content pane
        Container contentPane = getContentPane();
        contentPane.setBackground(Color.CYAN.darker());
        contentPane.setLayout(new BoxLayout(contentPane, BoxLayout.Y_AXIS));
        contentPane.add(Box.createVerticalStrut(30));
        contentPane.add(titlePanel);
        contentPane.add(usernamePanel);
        contentPane.add(passwordPanel);
        contentPane.add(buttonPanel);
        buttonPanel.add(loginButton);
        contentPane.add(Box.createVerticalGlue());

        // Set the JFrame properties and make it visible
        pack();
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null);
        setResizable(false);
        setVisible(true);

    }

    // Static method to get the main window reference
    public static ClientEntry getMainWindow() {
        return mainWindow;
    }

    private class LoginButtonListener implements ActionListener {
        @Override
        public void actionPerformed(ActionEvent e) {

            try {
                String usernameFieldVal = usernameField.getText();
                String passwordFieldVal = String.valueOf(passwordField.getPassword());
                player = wordyImpl.login(usernameFieldVal, passwordFieldVal);

                dispose();
                System.out.println("A Client has accessed the Application.");
                System.out.println("--------------------------------------");

                new WordyGUI(wordyImpl, player); // Opens main window

                // Play the sound
                try {
                    AudioInputStream audioInputStream = AudioSystem.getAudioInputStream(new File("src/client/gui/sounds/click.wav").getAbsoluteFile());
                    Clip clip = AudioSystem.getClip();
                    clip.open(audioInputStream);
                    clip.start();
                } catch (Exception ex) {
                    ex.printStackTrace();
                }

                // Add a window listener to handle the logout
                ClientEntry.getMainWindow().addWindowListener(new java.awt.event.WindowAdapter() {
                    @Override
                    public void windowClosing(java.awt.event.WindowEvent e) {
                        try {
                            wordyImpl.logOffUser(player.username);
                        } catch (wordyApp.UserNotFound userNotFound) {
                            userNotFound.printStackTrace();
                        }
                    }
                });

            } catch (org.omg.CORBA.COMM_FAILURE ex) {
                JOptionPane.showMessageDialog(ClientEntry.this, "The server is offline or unreachable. Please try again later.", "Connection Error", JOptionPane.ERROR_MESSAGE);
            } catch (IncorrectCredentials ex) {
                JOptionPane.showMessageDialog(ClientEntry.this, "Invalid username or password", "Login Error", JOptionPane.ERROR_MESSAGE);
                usernameField.setText("");
                passwordField.setText("");
            } catch (AlreadyLoggedIn ex) {
                JOptionPane.showMessageDialog(ClientEntry.this, "User is already logged in", "Login Error", JOptionPane.ERROR_MESSAGE);
            } catch (Exception ex) {
                JOptionPane.showMessageDialog(ClientEntry.this, "An unexpected error occurred. Please try again later.", "Error", JOptionPane.ERROR_MESSAGE);
                ex.printStackTrace();
            }
        }
    }
}
