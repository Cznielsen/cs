import java.util.List;

/**
 * Created by CZN-Macbook on 09/11/2016.
 */
public class CountPrimes1 implements Runnable {
    private int threadNo;
    static Counter counter = new Counter(1);
    static int threads = 1;

    public CountPrimes1(int threadNo) {
        this.threadNo = threadNo;
    }


    private static boolean isPrime(int n) {
        int k = 2;
        while (k * k <= n && n % k != 0)
            k++;
        return n >= 2 && k * k > n;
    }

    public static void main(String[] args) throws InterruptedException {
        CountPrimes1 cp1 = new CountPrimes1(1);
        //CountPrimes1 cp2 = new CountPrimes1(2);
        //CountPrimes1 cp3 = new CountPrimes1(3);
        //CountPrimes1 cp4 = new CountPrimes1(4);

        Thread t1 = new Thread(cp1);
        //Thread t2 = new Thread(cp2);
        //Thread t3 = new Thread(cp3);
        //Thread t4 = new Thread(cp4);

        t1.start();
        //t2.start();
        //t3.start();
        //t4.start();

        Thread arrayThreads[] = new Thread[1];


        arrayThreads[0] = t1;
        //arrayThreads[1] = t2;
        //arrayThreads[2] = t1;
        //arrayThreads[3] = t1;

            arrayThreads[0].join();

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
