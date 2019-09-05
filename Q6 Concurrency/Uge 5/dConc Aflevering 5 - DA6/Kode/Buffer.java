import java.util.concurrent.Semaphore;

/**
 * EDITED BY CZN on 10-12-2016
 * Redigeret pga. krav fra trin 6 i aflevering 5.
 */

public class Buffer {
    private String content = "";

    private final Semaphore space = new Semaphore(1);
    private final Semaphore items = new Semaphore(0);


    public void addItem(String s) {

        try {
            space.acquire();
            content = s;
            items.release();

        } catch (InterruptedException e) {}
    }

    public String getItem() {

        String temp = null;
        try {


            items.acquire();
            temp = content;
            space.release();

        } catch (InterruptedException e) {}

        return temp;
    }
}