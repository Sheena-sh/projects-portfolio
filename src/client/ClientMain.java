package client;

import client.gui.ClientEntry;
import wordyApp.*;
import org.omg.CORBA.ORB;
import org.omg.CosNaming.NamingContextExt;
import org.omg.CosNaming.NamingContextExtHelper;

// executable class for the client accessing the Wordy Application
// implements the client GUI
public class ClientMain {
    public static Wordy wordyImpl;

    public static void main(String[] args) {

        try{
            // create and initialize the ORB
            ORB orb = ORB.init(args, null);

            // get the root naming context
            org.omg.CORBA.Object objRef = orb.resolve_initial_references("NameService");

            // use NamingContextExt which is part of teh Interoperable Naming Service (INS) specification.
            NamingContextExt ncRef = NamingContextExtHelper.narrow(objRef);

            // resolve the Object Reference in Naming
            String appName = "WordyApp";
            wordyImpl = WordyHelper.narrow(ncRef.resolve_str(appName));

            System.out.println("Client must login.");
            // invokes (client) game GUI
            new ClientEntry(wordyImpl);

        } catch (org.omg.CORBA.COMM_FAILURE ex) {
            System.err.println("The server is offline or unreachable. Please try again later.");
            ex.printStackTrace();
        } catch(Exception e){
            System.err.println("An error occurred while initializing the client:");
            System.err.println(e.getMessage());
            e.printStackTrace();
        }

    }

}
