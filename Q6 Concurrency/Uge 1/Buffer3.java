/**
Stadig race condition, bare omvendt denne gang. Duplikerer noget af printet.
*/

public class Buffer {
    private volatile String content = "";
    private volatile boolean isEmpty = true;

    public void addItem(String s)
    {
	while(!isEmpty){};
	content = s;
	isEmpty = false;
	
    }

    public String getItem()
    {
	while(isEmpty) {};
	isEmpty = true;
	return content;
    }
}
