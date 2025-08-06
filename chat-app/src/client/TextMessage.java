package client;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class TextMessage {

    private String sender;
    private String text;
    private String time;
    private String recipient;
    private String typeOfMsg;

    public TextMessage(String sender, String text, String recipient, String typeOfMsg) {
        this.sender = sender;
        this.text = text;
        this.recipient = recipient;
        this.typeOfMsg = typeOfMsg;
        Date date = new Date(); // for the purpose
        Calendar calendar = GregorianCalendar.getInstance();
        calendar.setTime(date);
        int hour = calendar.get(Calendar.HOUR_OF_DAY);
        int min = calendar.get(Calendar.MINUTE);
        time = Integer.toString(hour) + ":"  + Integer.toString(min);
    }

    // SETTERS
    public void setSender(String sender) {
        this.sender = sender;
    }

    public void setText(String text) {
        this.text = text;
    }

    public void setRecipient(String recipient) {
        this.recipient = recipient;
    }

    // GETTERS
    public String getSender() {
        return sender;
    }

    public String getText() {
        return text;
    }

    public String getTime() {
        return time;
    }

    public String getRecipient() {
        return recipient;
    }

    public String getTypeOfMsg() {
        return typeOfMsg;
    }

}
