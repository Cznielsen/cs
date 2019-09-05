/**
 * EDITED BY CZN on 10-12-2016
 * Redigeret pga. krav fra trin 6 i aflevering 5.
 */

public class Consumer implements Runnable {
    private String greeting;
    private Buffer b;
    long startTime = System.currentTimeMillis();

    public Consumer(String aGreeting, Buffer aBuffer) {

        greeting = aGreeting;
        b = aBuffer;
    }

    public void run() {
        // try {
            while (true) {
                System.out.println(greeting + b.getItem());
                // Thread.sleep(100);
                long duration = System.currentTimeMillis() - this.startTime;
                System.out.println("Time duration: " + duration + " ms.");
            }
        }// catch (InterruptedException exception) {
       // }
    }
// }