import java.util.List;

/**
 * Created by CZN-Macbook on 09/11/2016.
 */
public class CountPrimes8 implements Runnable {
    private int threadNo;
    static Counter counter = new Counter(8);
    static int threads = 8;

    public CountPrimes8(int threadNo) {
        this.threadNo = threadNo;
    }


    private static boolean isPrime(int n) {
        int k = 2;
        while (k * k <= n && n % k != 0)
            k++;
        return n >= 2 && k * k > n;
    }

    public static void main(String[] args) throws InterruptedException {
        CountPrimes8 cp1 = new CountPrimes8(1);
        CountPrimes8 cp2 = new CountPrimes8(2);
        CountPrimes8 cp3 = new CountPrimes8(3);
        CountPrimes8 cp4 = new CountPrimes8(4);
        CountPrimes8 cp5 = new CountPrimes8(5);
        CountPrimes8 cp6 = new CountPrimes8(6);
        CountPrimes8 cp7 = new CountPrimes8(7);
        CountPrimes8 cp8 = new CountPrimes8(8);

        Thread t1 = new Thread(cp1);
        Thread t2 = new Thread(cp2);
        Thread t3 = new Thread(cp3);
        Thread t4 = new Thread(cp4);
        Thread t5 = new Thread(cp5);
        Thread t6 = new Thread(cp6);
        Thread t7 = new Thread(cp7);
        Thread t8 = new Thread(cp8);

        t1.start();
        t2.start();
        t3.start();
        t4.start();
        t5.start();
        t6.start();
        t7.start();
        t8.start();

        Thread arrayThreads[] = new Thread[8];


        arrayThreads[0] = t1;
        arrayThreads[1] = t2;
        arrayThreads[2] = t3;
        arrayThreads[3] = t4;
        arrayThreads[4] = t5;
        arrayThreads[5] = t6;
        arrayThreads[6] = t7;
        arrayThreads[7] = t8;

        for (int i = 0; i <= 7; i++) {
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
