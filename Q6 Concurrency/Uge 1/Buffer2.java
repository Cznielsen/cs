/**
Terminerer ikke. Race condition (De læser på samme tid og printer nogen gange det samme pga 100ms sleep)
*/

public class Buffer {
    private volatile String content = "";
    private volatile boolean isEmpty = true;

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
