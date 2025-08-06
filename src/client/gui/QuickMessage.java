package client.gui;

import javax.swing.JDialog;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.Timer;
import javax.swing.border.EmptyBorder;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class QuickMessage {
    private JDialog toastDialog;

    public void showToast(String message, int duration) {
        toastDialog = new JDialog();
        toastDialog.setUndecorated(true);

        JPanel contentPane = new JPanel() {
            @Override
            protected void paintComponent(Graphics g) {
                Graphics2D g2d = (Graphics2D) g;
                g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
                g2d.setColor(new Color(230, 230, 230, 200)); // Semi-transparent background color
                g2d.fillRoundRect(0, 0, getWidth(), getHeight(), 10, 10);
                super.paintComponent(g);
            }
        };
        contentPane.setBorder(new EmptyBorder(50, 50, 50, 50)); // Add padding
        contentPane.setBackground(new Color(52, 152, 219)); // Set background color
        contentPane.setLayout(new java.awt.FlowLayout(java.awt.FlowLayout.CENTER, 0, 0)); // Center-align the message

        JLabel label = new JLabel(message);
        label.setFont(new Font("Arial", Font.PLAIN, 20)); // Set font
        label.setForeground(Color.white);
        contentPane.add(label);

        toastDialog.setContentPane(contentPane);

        toastDialog.pack();
        toastDialog.setLocationRelativeTo(null);

        Timer timer = new Timer(duration, new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                toastDialog.dispose(); // Close the dialog after the specified duration
            }
        });
        timer.setRepeats(false); // Ensure that the timer fires only once
        timer.start();

        toastDialog.setVisible(true);
    }
}
