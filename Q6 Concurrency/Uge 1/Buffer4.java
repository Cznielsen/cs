/**
Correctly prints TestA, but still does not terminate. Test B is fucked up.
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
	String temp = content;
	isEmpty = true;
	return temp;
    }
}
