/**
Syncronized for evigt.
*/

public class Buffer {
    private volatile String content = "";
    private volatile boolean isEmpty = true;

    public synchronized void addItem(String s)
    {
	while(!isEmpty){};
	content = s;
	isEmpty = false;
	
    }

    public synchronized String getItem()
    {
	while(isEmpty) {};
	String temp = content;
	isEmpty = true;
	return temp;
    }
}
