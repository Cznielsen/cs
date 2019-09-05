public class TestA {
	
    public static void main(String[] args){
	Buffer b = new Buffer();
	Producer p = new Producer("A",10,b);
	Consumer c = new Consumer("Received this message: ",b); 
	Thread t1 = new Thread(p);
	Thread t2 = new Thread(c);
	t1.start();
	t2.start();
    }
}