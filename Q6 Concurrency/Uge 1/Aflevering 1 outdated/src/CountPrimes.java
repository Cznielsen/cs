/**
 * Expanded by CZN on 08-11-2016.
 * Calculates the amount of primes in a given number using a given amount of threads concurrently.
 *
 *
 * Last edited by CZN on 08-11-2016
 */

import java.util.Scanner;

public class CountPrimes {

    //Not changed.
    public static boolean isPrime(int n) {
        int k = 2;
        while (k * k <= n && n % k != 0)
            k++;
        return n >= 2 && k * k > n;
    }

    public static void main(String[] args) throws InterruptedException {
        // User-entered search-number and amount of threads.
        Scanner in = new Scanner(System.in);
        System.out.println("Please choose the number you wish to find the amount of prime-numbers in: ");
                //Konverterer strenge til int
        int number = in.nextInt();
        System.out.println("Please choose the amount of threads that will be used to find the prime-numbers: ");
                //Konverterer strenge til int
        int threads = in.nextInt();

        Thread arrayThreads[] = new Thread[threads];

        //Erklærer og initialiserer totalCount
        TotalCount tc = new TotalCount(threads);

        for (int i = 0; i < threads; i++){
            //Adds new threads to an array for using the join()-method later.
            arrayThreads[i] = new Thread(new Counter(number, threads));
            arrayThreads[i].start();
        }

        //Waits for the threads to complete their computation
        for (int i = 0; i < threads; i++) {
            arrayThreads[i].join();
        }

        //TODO  Mangler stadig en ordentlig måde at counte primes på.
        //TODO  Tænker at man skal instanciere TotalCount-klassen til et objekt og dermed
        //TODO  Få den til at samle counts op fra counteren. Måske vha. wait() / NotifyAll().


        /*
        // Time-measurer print, smidt over i totalcount
        final long duration = System.currentTimeMillis()-startTime;
        System.out.println("Time duration: "+duration);

        */
    }
}
