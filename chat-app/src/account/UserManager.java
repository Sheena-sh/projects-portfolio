package account;

import java.util.List;

import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMResult;
import javax.xml.transform.stream.StreamSource;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;

public class UserManager {

    private User tempUser = null;
    private Users users = new Users();
    public static String filePath = "src/res/users.xml";
    public static final int valNameDoesNotExist = 0;
    public static final int valIncorrectPass = 1;
    public static final int valValidLogin = 2;

    /**
     * Creates an instance of the UserManager class, calls the loadUsers method to load the user information from the XML file
     * Retrieves the Users object
     * Calls the print method to display the user information.
     */
    public static void main(String[] argv) throws Exception {

        UserManager userManager = new UserManager();
        userManager.loadUsers();
        Users users = userManager.getUsers();
        users.print();
    }

    /**
     *  Method is responsible for loading the user information from the XML file
     *  Creates a StreamSource object that represents the XML file and a DOMResult object to store the parsed XML data
     *  It then uses the TransformerFactory class to transform the XML data into a DOM object
     *  which can be used to access and manipulate the XML data
     *  Calls the parseXMLElements method to parse the XML data and extract the user information.
     * @throws Exception
     */
    public void loadUsers() throws Exception {
        //Locate the file
        StreamSource xmlUsed = new StreamSource(filePath);
        DOMResult domResult = new DOMResult();
        try {
            TransformerFactory.newInstance().newTransformer().transform(xmlUsed, domResult);
        }
        catch(Exception e) {
            throw new Exception("Xml file not found");
        }
        Document document = (Document) domResult.getNode();
        document.normalize();
        //Begin parsing ...
        parseXMLElements(document.getDocumentElement(), 0);
    }

    /**
     * Recursive method that parses the XML elements and extracts the user information
     * Starts by getting the child nodes of the current element and iterating through them
     * If the child node is an element, the method recursively calls itself to process the child element
     * If the child node is a text node, the method checks the name of the parent element to determine whether
     * it represents a username or password, and sets the appropriate field in the tempUser object
     * When the end of a user element is reached, the method adds the tempUser object to the list of users in the users object and sets tempUser to null.
     */
    private void parseXMLElements(Element element, int indent) throws Exception {
        try {
            NodeList children = element.getChildNodes();

            for (int x = 0 ; x < children.getLength() ; x++) {
                Node child = children.item(x);
                if (child instanceof Element)
                    parseXMLElements((Element)child, indent+4);
                else if (child instanceof Text) {
                    if ( element.getNodeName().equals("UserName") ) {
                        if(tempUser == null) tempUser = new User();
                        //Set userName ...
                        tempUser.setUsername( child.getNodeValue());
                    } else if ( element.getNodeName().equals("Password") ) {
                        if(tempUser == null) tempUser = new User();
                        //Set password ...
                        tempUser.setPassword(child.getNodeValue());
                        //Add the users to the list ...
                        users.getUsers().add(tempUser);
                        //Null it ...
                        tempUser = null;
                    }
                }
            } // end of for-loop
        }

        catch(Exception e){
            throw new Exception("Please make sure that the xml file is properly set");
        }

    } // end of processElements


    /**
     * Takes a User object as a parameter and returns an integer value
     * Obtains the list of registered users using the getUsers method and iterates through them
     * If the username and password of the current user exists within the xml or match any of those of the other registered users
     * it returns valCorrectLogin
     * If only the username matches but the password is incorrect, it returns valIncorrectPass
     * If the username does not match any of the registered users, it returns valNameDoesNotExist.
     * @param user
     * @return
     */
    public int checkUserExistence(User user) {
        List dbUsers = users.getUsers();
        for(int i = 0; i < dbUsers.size(); ++i) {
            User dbUser = (User)dbUsers.get(i);
            if( dbUser.getUsername().equalsIgnoreCase( user.getUsername() ) &&
                    dbUser.getPassword().equals( user.getPassword() ) ) {
                return valValidLogin;
            } else if( dbUser.getUsername().equalsIgnoreCase( user.getUsername() ) &&
                    !dbUser.getPassword().equals( user.getPassword() ) ) {
                return valIncorrectPass;
            }
        }
        return valNameDoesNotExist;
    }

    /**
     * Accessor for users
     * @return users
     */
    public Users getUsers() {
        return users;
    }

    /**
     * Mutator for users
     * @param users of application
     */
    public void setUsers(Users users) {
        this.users = users;
    }

}
