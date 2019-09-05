import java.io.Serializable;

/**
 * 
 * @author Jesper Buus Nielsen
 *
 */
public class MyTextEvent implements Serializable{
	private int offset;
	private int[] vc;										//Now we have a vector clock that we can attach to the event.

	MyTextEvent(int offset) {
		this.offset = offset;
	}

	int getOffset() { return offset; }

	public void setOffset(int o) {
		offset += o;
	}

	public void setVC(int[] vc) {
		this.vc = vc;
	}			//We just have simple getter and setter methods for the
															//EventReplayer to attach or grab them when sending/listening.
	public int[] getVC() {
		return vc;
	}
}
