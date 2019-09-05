import java.util.List;

/**
 * Created by CZN-Macbook on 09/11/2016.
 */
public class CountPrimes2 implements Runnable {
    private int threadNo;
    static Counter counter = new Counter(2);
    static int threads = 2;

    public CountPrimes2(int threadNo) {
        this.threadNo = threadNo;
    }


    private static boolean isPrime(int n) {
        int k = 2;
        while (k * k <= n && n % k != 0)
            k++;
        return n >= 2 && k * k > n;
    }

    public static void main(String[] args) throws InterruptedException {
        CountPrimes2 cp1 = new CountPrimes2(1);
        CountPrimes2 cp2 = new CountPrimes2(2);
        //CountPrimes2 cp3 = new CountPrimes2(3);
        //CountPrimes2 cp4 = new CountPrimes2(4);

        Thread t1 = new Thread(cp1);
        Thread t2 = new Thread(cp2);
        //Thread t3 = new Thread(cp3);
        //Thread t4 = new Thread(cp4);

        t1.start();
        t2.start();
        //t3.start();
        //t4.start();

        Thread arrayThreads[] = new Thread[2];


        arrayThreads[0] = t1;
        arrayThreads[1] = t2;
        //arrayThreads[2] = t1;
        //arrayThreads[3] = t1;

        for (int i = 0; i <= 1; i++) {
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

/*
    @Override
    public void run() {
        int count = 0;
        if (threadNo == 1) {
            for (int i = 1; i < 5000000; i++)
                if (isPrime(i)) count++;
        } else {
            for (int i = 5000001; i < 10000000; i++)
                if (isPrime(i)) count++;
        }
        counter.primeCounter(count);
    }
    */
}
