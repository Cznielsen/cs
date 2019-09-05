/**
 * EDITED BY CZN on 25-11-2016
 * Redigeret pga. krav fra trin 3 i aflevering 3.
 */
public class Producer implements Runnable {

	private String greeting;
	private int repetitions;
	private Buffer b;

	public Producer(String aGreeting, int aRepetitions, Buffer aBuffer){
		greeting = aGreeting;
		repetitions = aRepetitions;
		b = aBuffer;
	}

	@Override
	public void run(){
			for(int i = 1; i <= repetitions; i++)
				b.addItem(greeting + TestN.number);
}

}