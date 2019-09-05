
public class Buffer {
    private volatile String content = "";
    private volatile boolean isEmpty = true;

    public synchronized void addItem(String s) {
        try {
            while (!isEmpty) {
                wait();
            }
            ;
        } catch (InterruptedException exception) {
        }
        content = s;
        isEmpty = false;
        // Step 4 says to change all notifyAll() into notify();
        // notifyAll();
        notify();

    }

    public synchronized String getItem() {
        try {
            while (isEmpty) {
                wait();
            }
            ;
        } catch (InterruptedException exception) {
        }

        String temp = content;
        isEmpty = true;
        // Step 4 says to change all notifyAll() into notify();
        // notifyAll();
        notify();
        return temp;
    }
}