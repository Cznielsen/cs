import java.util.List;

/**
 * Created by CZN-Macbook on 09/11/2016.
 */
public class CountPrimes6 implements Runnable {
    private int threadNo;
    static Counter counter = new Counter(6);
    static int threads = 6;

    public CountPrimes6(int threadNo) {
        this.threadNo = threadNo;
    }


    private static boolean isPrime(int n) {
        int k = 2;
        while (k * k <= n && n % k != 0)
            k++;
        return n >= 2 && k * k > n;
    }

    public static void main(String[] args) throws InterruptedException {
        CountPrimes6 cp1 = new CountPrimes6(1);
        CountPrimes6 cp2 = new CountPrimes6(2);
        CountPrimes6 cp3 = new CountPrimes6(3);
        CountPrimes6 cp4 = new CountPrimes6(4);
        CountPrimes6 cp5 = new CountPrimes6(5);
        CountPrimes6 cp6 = new CountPrimes6(6);

        Thread t1 = new Thread(cp1);
        Thread t2 = new Thread(cp2);
        Thread t3 = new Thread(cp3);
        Thread t4 = new Thread(cp4);
        Thread t5 = new Thread(cp5);
        Thread t6 = new Thread(cp6);

        t1.start();
        t2.start();
        t3.start();
        t4.start();
        t5.start();
        t6.start();

        Thread arrayThreads[] = new Thread[6];


        arrayThreads[0] = t1;
        arrayThreads[1] = t2;
        arrayThreads[2] = t3;
        arrayThreads[3] = t4;
        arrayThreads[4] = t5;
        arrayThreads[5] = t6;

        for (int i = 0; i <= 5; i++) {
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
