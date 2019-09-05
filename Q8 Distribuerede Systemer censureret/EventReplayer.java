import javax.swing.JTextArea;
import java.awt.EventQueue;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;
import java.util.ArrayList;

/**
 * Takes the event recorded by the aflevering2.DocumentEventCapturer and replays
 * them in a JTextArea. The delay of 1 sec is only to make the individual
 * steps in the reply visible to humans.
 *
 * @author Jesper Buus Nielsen
 */
public class EventReplayer implements Runnable {

    private DocumentEventCapturer dec;
    private JTextArea area;
    protected Socket socket;                                                    //This socket is what the object streams are created from.
    private Thread sender;                                                      //This thread handles sending out MyTextEvents.
    private int[] vectorClock = new int[2];
    private int myIndex;
    private ArrayList<MyTextEvent> history = new ArrayList<>();


    private ObjectInputStream ois = null;
    private ObjectOutputStream oos = null;

    public EventReplayer(DocumentEventCapturer dec, JTextArea area, Socket socket, boolean isServer) {
        this.dec = dec;
        this.area = area;
        this.socket = socket;                                                   //The socket given from the DistributedTextEditor class when the ER object is created.
        if (isServer) {                                                         //We decided to make the server have index 1 in the vector clock.
            myIndex = 1;                                                        //The boolean is sent from the Listen and Connect methods.
        } else myIndex = 0;

        vectorClock[0] = 0;                                                     //Initialize the vector clock to [0][0]
        vectorClock[1] = 0;
    }

    public void run() {                                                         //The run method is entirely different now.
        try {                                                                   //We start bt creating the object streams from the connected socket.
            oos = new ObjectOutputStream(socket.getOutputStream());
            ois = new ObjectInputStream(socket.getInputStream());

            sendEvents();                                                       //Then we start the thread that takes MyTextEvents from the DocumentEventCapturer's queue of
            listenForEvents();                                                  //events and sends them over the ObjectOutputStream. Then we start listening for MTEs on
            sender.interrupt();                                                 //the main thread, by reading them in from the ObjectInputStream.
            area.setText("");                                                   //When its done listening, it means it's time to close the ER, so it closes the sender
                                                                                //thread, and resets the text area.
            ois.close();                                                        //Streams are then closed, as well as the socket.
            oos.close();
            socket.close();

        } catch (IOException e) {
            e.printStackTrace();
        }

        System.out.println("I'm the thread running the aflevering2.EventReplayer, now I die!");
    }


    public void listenForEvents() {                                             //This method runs on the ert thread in the run method, so when it finishes the run
        try {                                                                   //method does so too. The ois.readObject() line blocks until it has read an MTE, so
            MyTextEvent mte;                                                    //it will keep running this while loop until it catches an exception.
            while ((mte = (MyTextEvent) ois.readObject()) != null) {
                System.out.println("Received: ["+mte.getVC()[0]+"] ["+mte.getVC()[1]+"]");

                if (mte.getVC()[myIndex] == vectorClock[myIndex]) history.clear(); //If the received event's vector clock has seen all events from you, you clear the history.

                int extraOffset = 0;                                            //What this algorithm does is calculate the extra offset
                if (myIndex == 0) {                                             //needed to place the received event at the right place,
                    for (MyTextEvent events : history) {                        //since the local copy may have been modified while the event was being sent.
                        if (mte.getVC()[myIndex] >= events.getVC()[myIndex]) continue;  //This algorithm is explained further in the report, but essentially
                        if (events.getOffset()+extraOffset >= mte.getOffset()) continue;//It checks the local history of events to find all events done
                                                                                        //that the sender did not know about when sending his event,
                        if (events instanceof TextInsertEvent) {                        //in order to calculate the offset at the point in time the sender
                            extraOffset += ((TextInsertEvent) events).getText().length();//was when he sent it.
                        } else if (events instanceof  TextRemoveEvent) {                //This is done by simply adding to the offset if a local insert event
                            extraOffset -= ((TextRemoveEvent) events).getLength();      //has been done, and decreasing it if there was a remove event.
                        }                                                               //But only if these events happened at a lower offset than the
                    }                                                                   //received event, because otherwise they don't affect the offset.
                } else {                                                                //This algorithm has a few flaws as well, described in the report.
                    for (MyTextEvent events : history) {
                        if (mte.getVC()[myIndex] >= events.getVC()[myIndex]) continue;  //We also distinguish whether the recipient is the server of client,
                        if (events.getOffset()+extraOffset > mte.getOffset()) continue; //because if both client and server let the other have priority over
                                                                                        //events inserted at the same offset, then we would get a consistency error.
                        if (events instanceof TextInsertEvent) {
                            extraOffset += ((TextInsertEvent) events).getText().length();
                        } else if (events instanceof  TextRemoveEvent) {
                            extraOffset -= ((TextRemoveEvent) events).getLength();
                        }
                    }
                }
                mte.setOffset(extraOffset);                                             //We add the extra offset to the event, and then invoke it on the GUI.
                invokeOnGUI(mte);

                vectorClock[myIndex] = max(vectorClock[myIndex], mte.getVC()[myIndex]); //We then update our vector clocks.
                vectorClock[1-myIndex] = max(vectorClock[1-myIndex], mte.getVC()[1-myIndex]);

            }
        } catch (IOException | ClassNotFoundException e) {
            System.out.println("Client has disconnected");
        }
    }

    public void invokeOnGUI(MyTextEvent mte) {
        if (mte instanceof TextInsertEvent) {
            final TextInsertEvent tie = (TextInsertEvent) mte;
            EventQueue.invokeLater(new Runnable() {
                public void run() {
                    try {
                        dec.setAllowed(false);
                        area.insert(tie.getText(), tie.getOffset());
                        dec.setAllowed(true);
                    } catch (Exception e) {
                        System.err.println(e);
                    }
                }
            });
        } else if (mte instanceof TextRemoveEvent) {
            final TextRemoveEvent tre = (TextRemoveEvent) mte;
            EventQueue.invokeLater(new Runnable() {
                public void run() {
                    try {
                        dec.setAllowed(false);
                        area.replaceRange(null, tre.getOffset(), tre.getOffset() + tre.getLength());
                        dec.setAllowed(true);
                    } catch (Exception e) {
                        System.err.println(e);
                    }
                }
            });
        }
    }

    public void sendEvents() {                                      //This method sends MTEs on a new thread so it doesn't interfere.
        sender = new Thread(() -> {
            try {
                while (!Thread.interrupted()) {                     //It runs until being interrupted, although dec.take() also blocks
                    MyTextEvent mte = dec.take();                   //until there is a new event to send.

                    vectorClock[myIndex] += 1;                      //We increment our vector clock to indicate an event has occurred on our end.

                    mte.setVC(vectorClock.clone());                 //Then we attach the vector clock to the event.
                    history.add(mte);                               //We also add it to our history of events done locally.

                    System.out.println("Sending: ["+mte.getVC()[0]+"] ["+mte.getVC()[1]+"]");

                    oos.writeObject(mte);
                }
            } catch (IOException | InterruptedException e) {
                e.printStackTrace();
            }
        });
        sender.start();
    }

    public int max(int i, int j) {
        if (i > j) return i;
        else return j;
    }


}
