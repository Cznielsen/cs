/**
 * Created by CZN on 08-11-2016.
 * Takes a given search number as well as a given amount of threads from args in main
 * <p>
 * Last edited by CZN 08-11-2016.
 */
public class Counter implements Runnable {
    private int number;
    private int threads;

    public Counter(int number, int threads) {
        this.number = number;
        this.threads = threads;
    }

    @Override
    public void run() {
        int count = 0;
        for (int i = 1; i <= threads; i++) {
            for (int j = (((number / threads) * (i - 1)) + 1); j <= ((number / threads) * i); j++) {
                if (CountPrimes.isPrime(j)) {
                    count++;
                }
            }
        }
    }
}
