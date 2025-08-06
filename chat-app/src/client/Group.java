package client;

import java.io.Serializable;
import java.util.Vector;

public class Group implements Serializable {
    String groupName;
    Vector<String> members;

    public Group(String groupName, Vector<String> members) {
        this.groupName = groupName;
        this.members = members;
    }

    public String getGroupName() {
        return groupName;
    }
    public String getMembers(){
        return getMembers();
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

}
