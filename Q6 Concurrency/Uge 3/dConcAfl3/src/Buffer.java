
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
        notifyAll();

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
        notifyAll();
        return temp;
    }
}