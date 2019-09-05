import java.util.List;

/**
 * Created by CZN-Macbook on 09/11/2016.
 */
public class CountPrimes7 implements Runnable {
    private int threadNo;
    static Counter counter = new Counter(7);
    static int threads = 7;

    public CountPrimes7(int threadNo) {
        this.threadNo = threadNo;
    }


    private static boolean isPrime(int n) {
        int k = 2;
        while (k * k <= n && n % k != 0)
            k++;
        return n >= 2 && k * k > n;
    }

    public static void main(String[] args) throws InterruptedException {
        CountPrimes7 cp1 = new CountPrimes7(1);
        CountPrimes7 cp2 = new CountPrimes7(2);
        CountPrimes7 cp3 = new CountPrimes7(3);
        CountPrimes7 cp4 = new CountPrimes7(4);
        CountPrimes7 cp5 = new CountPrimes7(5);
        CountPrimes7 cp6 = new CountPrimes7(6);
        CountPrimes7 cp7 = new CountPrimes7(7);

        Thread t1 = new Thread(cp1);
        Thread t2 = new Thread(cp2);
        Thread t3 = new Thread(cp3);
        Thread t4 = new Thread(cp4);
        Thread t5 = new Thread(cp5);
        Thread t6 = new Thread(cp6);
        Thread t7 = new Thread(cp7);

        t1.start();
        t2.start();
        t3.start();
        t4.start();
        t5.start();
        t6.start();
        t7.start();

        Thread arrayThreads[] = new Thread[7];


        arrayThreads[0] = t1;
        arrayThreads[1] = t2;
        arrayThreads[2] = t3;
        arrayThreads[3] = t4;
        arrayThreads[4] = t5;
        arrayThreads[5] = t6;
        arrayThreads[6] = t7;

        for (int i = 0; i <= 6; i++) {
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
