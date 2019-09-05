import java.util.List;

/**
 * Created by CZN-Macbook on 09/11/2016.
 */
public class CountPrimes5 implements Runnable {
    private int threadNo;
    static Counter counter = new Counter(5);
    static int threads = 5;

    public CountPrimes5(int threadNo) {
        this.threadNo = threadNo;
    }


    private static boolean isPrime(int n) {
        int k = 2;
        while (k * k <= n && n % k != 0)
            k++;
        return n >= 2 && k * k > n;
    }

    public static void main(String[] args) throws InterruptedException {
        CountPrimes5 cp1 = new CountPrimes5(1);
        CountPrimes5 cp2 = new CountPrimes5(2);
        CountPrimes5 cp3 = new CountPrimes5(3);
        CountPrimes5 cp4 = new CountPrimes5(4);
        CountPrimes5 cp5 = new CountPrimes5(5);

        Thread t1 = new Thread(cp1);
        Thread t2 = new Thread(cp2);
        Thread t3 = new Thread(cp3);
        Thread t4 = new Thread(cp4);
        Thread t5 = new Thread(cp5);

        t1.start();
        t2.start();
        t3.start();
        t4.start();
        t5.start();

        Thread arrayThreads[] = new Thread[5];


        arrayThreads[0] = t1;
        arrayThreads[1] = t2;
        arrayThreads[2] = t3;
        arrayThreads[3] = t4;
        arrayThreads[4] = t5;

        for (int i = 0; i <= 4; i++) {
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
