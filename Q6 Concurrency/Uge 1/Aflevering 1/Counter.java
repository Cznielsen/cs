/**
 * Created by CZN-Macbook on 09/11/2016.
 */
public class Counter {
    private int threads;
    private long startTime;
    private volatile int totalCount;
    private int increment = 0;

    public Counter(int threads) {
        this.threads = threads;
        startTime = System.currentTimeMillis();
    }

    public void primeCounter(int count) {
        this.totalCount += count;
        increment++;
        if (increment == threads) {
            System.out.println("Number of Primes: " + totalCount);
            final long duration = System.currentTimeMillis() - startTime;
            System.out.println("Time duration: " + duration);
        }
    }
}
