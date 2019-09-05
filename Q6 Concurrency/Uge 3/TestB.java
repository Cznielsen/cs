public class TestB {
	
    public static void main(String[] args){
	Buffer b = new Buffer();
	Producer p = new Producer("A",10000,b);
	Producer p2 = new Producer("B",10,b);
	Consumer c = new Consumer("Received this message: ",b); 
	Thread t1 = new Thread(p);
	Thread t2 = new Thread(c);
	Thread t3 = new Thread(p2);
	t1.start();
	t2.start();
	t3.start();
    }
}