import java.util.List;

/**
 * Created by CZN-Macbook on 09/11/2016.
 */
public class CountPrimes10 implements Runnable {
    private int threadNo;
    static Counter counter = new Counter(10);
    static int threads = 10;

    public CountPrimes10(int threadNo) {
        this.threadNo = threadNo;
    }


    private static boolean isPrime(int n) {
        int k = 2;
        while (k * k <= n && n % k != 0)
            k++;
        return n >= 2 && k * k > n;
    }

    public static void main(String[] args) throws InterruptedException {
        CountPrimes10 cp1 = new CountPrimes10(1);
        CountPrimes10 cp2 = new CountPrimes10(2);
        CountPrimes10 cp3 = new CountPrimes10(3);
        CountPrimes10 cp4 = new CountPrimes10(4);
        CountPrimes10 cp5 = new CountPrimes10(5);
        CountPrimes10 cp6 = new CountPrimes10(6);
        CountPrimes10 cp7 = new CountPrimes10(7);
        CountPrimes10 cp8 = new CountPrimes10(8);
        CountPrimes10 cp9 = new CountPrimes10(9);
        CountPrimes10 cp10 = new CountPrimes10(10);

        Thread t1 = new Thread(cp1);
        Thread t2 = new Thread(cp2);
        Thread t3 = new Thread(cp3);
        Thread t4 = new Thread(cp4);
        Thread t5 = new Thread(cp5);
        Thread t6 = new Thread(cp6);
        Thread t7 = new Thread(cp7);
        Thread t8 = new Thread(cp8);
        Thread t9 = new Thread(cp9);
        Thread t10 = new Thread(cp10);


        t1.start();
        t2.start();
        t3.start();
        t4.start();
        t5.start();
        t6.start();
        t7.start();
        t8.start();
        t9.start();
        t10.start();

        Thread arrayThreads[] = new Thread[10];


        arrayThreads[0] = t1;
        arrayThreads[1] = t2;
        arrayThreads[2] = t3;
        arrayThreads[3] = t4;
        arrayThreads[4] = t5;
        arrayThreads[5] = t6;
        arrayThreads[6] = t7;
        arrayThreads[7] = t8;
        arrayThreads[8] = t9;
        arrayThreads[9] = t10;

        for (int i = 0; i <= 9; i++) {
            arrayThreads[i].join();
        }

    }

    @Override
    public void run() {
        int count = 0;
        for (int j = (((10000000 / threads) * (threadNo - 1)) + 1); j <= ((10000000 / threads) * threadNo); j++) {
            if (isPrime(j)) count++;
        }
        counter.primeCounter(count);
    }
}
