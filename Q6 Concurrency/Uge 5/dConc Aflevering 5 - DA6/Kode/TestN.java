/**
 * MADE BY CZN on 10-12-2016
 */

import java.util.Scanner;

public class TestN {
    public static int number;

    public static void main(String[] args) throws InterruptedException {

        Buffer b = new Buffer();

        Scanner in = new Scanner(System.in);
        System.out.print("Vælg antal producers tak.");
        int n = in.nextInt();
        number = n;

        Thread arrayProducers[] = new Thread[n];
        Consumer c = new Consumer("Generic message: ", b);

        for (int i = 0; i < n; i++) {
            arrayProducers[i] = new Thread(new Producer("Amount of Producers: ", 1, b));
            arrayProducers[i].start();
        }

        Thread t1 = new Thread(c);
        t1.start();


    }
}