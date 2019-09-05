/**
 * Created by CZN on 08-11-2016.
 */

public class TotalCount {
    private int threads;
    private long totalCount;
    final long startTime;

    public TotalCount(int threads) {
        this.threads = threads;
        startTime = System.currentTimeMillis();
    }

    public void nigger(int count) {
        int increment = 0;
        this.totalCount += count;
        increment++;
        if (increment == threads)
            System.out.println("Number of Primes: " + totalCount);
        final long duration = System.currentTimeMillis() - startTime;
        System.out.println("Time duration: " + duration);
    }


    public long getTotalCount() {
        return totalCount;
    }

}