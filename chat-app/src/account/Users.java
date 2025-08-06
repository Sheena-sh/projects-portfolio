package account;

import java.io.Serializable;
import java.util.*;

public class Users implements Serializable {

    private List users = new ArrayList();

    public List getUsers() {
        return users;
    }

    public void setUsers(List users) {
        this.users = users;
    }

    public void print() {
        for(int i = 0; i < users.size(); ++i) {
            User user = (User)users.get(i);
            System.out.println("UserName : " + user.getUsername() +
                    " - Password : " + user.getPassword());
        }
    }

}
