import java.util.List;

/**
 * Created by CZN-Macbook on 09/11/2016.
 */
public class CountPrimes9 implements Runnable {
    private int threadNo;
    static Counter counter = new Counter(9);
    static int threads = 9;

    public CountPrimes9(int threadNo) {
        this.threadNo = threadNo;
    }


    private static boolean isPrime(int n) {
        int k = 2;
        while (k * k <= n && n % k != 0)
            k++;
        return n >= 2 && k * k > n;
    }

    public static void main(String[] args) throws InterruptedException {
        CountPrimes9 cp1 = new CountPrimes9(1);
        CountPrimes9 cp2 = new CountPrimes9(2);
        CountPrimes9 cp3 = new CountPrimes9(3);
        CountPrimes9 cp4 = new CountPrimes9(4);
        CountPrimes9 cp5 = new CountPrimes9(5);
        CountPrimes9 cp6 = new CountPrimes9(6);
        CountPrimes9 cp7 = new CountPrimes9(7);
        CountPrimes9 cp8 = new CountPrimes9(8);
        CountPrimes9 cp9 = new CountPrimes9(9);

        Thread t1 = new Thread(cp1);
        Thread t2 = new Thread(cp2);
        Thread t3 = new Thread(cp3);
        Thread t4 = new Thread(cp4);
        Thread t5 = new Thread(cp5);
        Thread t6 = new Thread(cp6);
        Thread t7 = new Thread(cp7);
        Thread t8 = new Thread(cp8);
        Thread t9 = new Thread(cp9);

        t1.start();
        t2.start();
        t3.start();
        t4.start();
        t5.start();
        t6.start();
        t7.start();
        t8.start();
        t9.start();

        Thread arrayThreads[] = new Thread[9];


        arrayThreads[0] = t1;
        arrayThreads[1] = t2;
        arrayThreads[2] = t3;
        arrayThreads[3] = t4;
        arrayThreads[4] = t5;
        arrayThreads[5] = t6;
        arrayThreads[6] = t7;
        arrayThreads[7] = t8;
        arrayThreads[8] = t9;

        for (int i = 0; i <= 8; i++) {
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
