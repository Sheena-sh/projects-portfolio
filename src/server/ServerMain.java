package server;

// imports
import org.omg.CORBA.ORB;
import org.omg.CosNaming.NamingContextExt;
import org.omg.CosNaming.NamingContextExtHelper;
import org.omg.CosNaming.NameComponent;
import org.omg.PortableServer.POAHelper;
import org.omg.PortableServer.POA;
import wordyApp.*;

/*
 executable class for the server of the Wordy Application
 calls the ServerImpl (servant) class that holds the interface methods and
 implementation methods of the application
 */
public class ServerMain {

    public static void main(String[] args) {

        try {
            Runtime.getRuntime().exec("cmd /c start orbd -ORBInitialPort 10000");

            // creating and initializing the ORB
            ORB orb = ORB.init(args, null);

            // referencing root POA for object implementations portable between different ORB products
            POA rootPOA = POAHelper.narrow(orb.resolve_initial_references("RootPOA"));


            // activating the POA Manager using the POA reference
            rootPOA.the_POAManager().activate();

            // instantiating the servant class and registering it with the ORB
            ServerImpl wordyServerImpl = new ServerImpl();
            // getting corba object reference from servant
            org.omg.CORBA.Object reference = rootPOA.servant_to_reference(wordyServerImpl);
            Wordy wordyReference = WordyHelper.narrow(reference);

            // getting root naming context
            org.omg.CORBA.Object objectRef = orb.resolve_initial_references("NameService");

            // using NamingContextExt (a Interoperable Naming Service (INS) specification)
            NamingContextExt namingContextExtRef = NamingContextExtHelper.narrow(objectRef);

            // binding the corba object reference of the servant to the name reference of the program
            String appName = "WordyApp";// name reference

            // making name component of the name reference
            NameComponent[] path = namingContextExtRef.to_name(appName);
            namingContextExtRef.rebind(path, wordyReference);// binding

            // server message prompt to console
            System.out.println("Server is Running...\nReady to Accept Clients in the Application");
            System.out.println("..........................................");

            orb.run(); // wait for invocations from clients

        } catch (Exception e) {
            System.err.println("An error occurred while starting the server:");
            System.err.println(e.getMessage());
        }

    }

}
