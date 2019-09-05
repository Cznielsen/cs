/**

*/

public class Buffer {
    private volatile String content = "";
    private volatile boolean isEmpty = true;

    public synchronized void addItem(String s) throws InterruptedException {
	while(!isEmpty) {wait();};
	content = s;
	isEmpty = false;
	notifyAll();
	
    }

    public synchronized String getItem() throws InterruptedException {
	while(isEmpty) {wait();};
	String temp = content;
	isEmpty = true;
	notifyAll();
	return temp;
    }
}

