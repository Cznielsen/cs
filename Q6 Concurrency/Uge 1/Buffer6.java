/**
	Manglede InterruptedException. Kører ganske udmærket ellers 
	(Der er lidt problemer med at B kommer før A i TestB, men det er er ok.)
*/

public class Buffer {
    private volatile String content = "";
    private volatile boolean isEmpty = true;


// Tilføjet InterruptedException
    public synchronized void addItem(String s) throws InterruptedException {
	while(!isEmpty) {wait();};
	content = s;
	isEmpty = false;
	notifyAll();
	
    }
// Tilføjet InterruptedException
    public synchronized String getItem() throws InterruptedException {
	while(isEmpty) {wait();};
	String temp = content;
	isEmpty = true;
	notifyAll();
	return temp;
    }
}
