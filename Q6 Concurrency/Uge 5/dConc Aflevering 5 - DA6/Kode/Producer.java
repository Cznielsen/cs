/**
 * EDITED BY CZN on 10-12-2016
 * Redigeret pga. krav fra trin 6 i aflevering 5.
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