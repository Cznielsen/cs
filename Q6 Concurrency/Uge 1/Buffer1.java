/**
Terminerer ikke. Skriver A1 og så derefter A2.
*/

public class Buffer {
    private String content = "";
    private boolean isEmpty = true;

    public void addItem(String s)
    {
	while(!isEmpty){};
	isEmpty = false;
	content = s;
	
    }

    public String getItem()
    {
	while(isEmpty) {};
	isEmpty = true;
	return content;
    }
}
