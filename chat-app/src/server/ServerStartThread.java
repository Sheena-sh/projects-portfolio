package server;

public class ServerStartThread extends Thread{
    private MessengerServer ms;

    /**
     * ServerThread is called to handle the starting of the server thread upon clicking "Start"
     * This is to run the server in a different thread and let the MessengerServer's main method
     * to handle the GUI events
     * @param ms
     */
    public ServerStartThread(MessengerServer ms) {
        this.ms = ms;
    }

    public void run() {
        ms.runServer();
    }

}
