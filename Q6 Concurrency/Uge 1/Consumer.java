public class Consumer implements Runnable {
    private String greeting;
    private Buffer b;
    public Consumer(String aGreeting, Buffer aBuffer){
	greeting = aGreeting;
	b = aBuffer;
    }
    public void run()
    {
	try
	    {
		while(true){
		    System.out.println(greeting + b.getItem());
		    Thread.sleep(100);
		}
	    }
	catch(InterruptedException exception){}
    }
}
	
