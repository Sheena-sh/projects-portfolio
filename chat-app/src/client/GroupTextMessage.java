package client;

import java.io.Serializable;

public class GroupTextMessage implements Serializable {
    private String sender;
    private String receiver;
    private String txtMsg;
    private String time;
    private String groupName;

    public GroupTextMessage(String groupName, String sender, String txtMsg, String time) {
        this.groupName = groupName;
        this.sender = sender;
        this.txtMsg = txtMsg;
        this.time = time;
    }

    // GETTERS
    public String getSender() {
        return sender;
    }
    public String getReceiver() {
        return receiver;
    }
    public String getTxtMsg() {
        return txtMsg;
    }
    public String getGroupName() {
        return groupName;
    }
    public String getTime() {
        return time;
    }

    // SETTERS
    public void setSender(String sender) {
        this.sender = sender;
    }
    public void setReceiver(String receiver) {
        this.receiver = receiver;
    }
    public void setTxtMsg(String txtMsg) {
        this.txtMsg = txtMsg;
    }
    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }
    public void setTime(String time) {
        this.time = time;
    }

}
