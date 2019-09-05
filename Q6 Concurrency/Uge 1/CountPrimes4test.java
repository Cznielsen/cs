import java.util.List;

/**
 * Created by CZN-Macbook on 09/11/2016.
 */
public class CountPrimes4test implements Runnable {
    private int threadNo;
    static Counter counter = new Counter(4);
    static int threads = 4;

    public CountPrimes4test(int threadNo) {
        this.threadNo = threadNo;
    }


    private static boolean isPrime(int n) {
        int k = 2;
        while (k * k <= n && n % k != 0)
            k++;
        return n >= 2 && k * k > n;
    }

    public static void main(String[] args) throws InterruptedException {
        CountPrimes4test cp1 = new CountPrimes4test(1);
        CountPrimes4test cp2 = new CountPrimes4test(2);
        CountPrimes4test cp3 = new CountPrimes4test(3);
        CountPrimes4test cp4 = new CountPrimes4test(4);

        Thread t1 = new Thread(cp1);
        Thread t2 = new Thread(cp2);
        Thread t3 = new Thread(cp3);
        Thread t4 = new Thread(cp4);

        t1.start();
        t2.start();
        t3.start();
        t4.start();

        Thread arrayThreads[] = new Thread[4];


        arrayThreads[0] = t1;
        arrayThreads[1] = t2;
        arrayThreads[2] = t3;
        arrayThreads[3] = t4;

        for (int i = 0; i <= 3; i++) {
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
