import java.util.LinkedList;
import java.util.Queue;

public class QueueExample {
    public static void main(String[] args) {
        // Creating a Queue
        Queue<String> queue = new LinkedList<>();

        // Adding elements to the Queue
        queue.offer("Element 1");
        queue.offer("Element 2");
        queue.offer("Element 3");

        System.out.println("Queue: " + queue);

        // Removing and printing elements from the Queue
        while (!queue.isEmpty()) {
            System.out.println("Removed from Queue: " + queue.poll());
        }

        // Checking if the Queue is empty
        System.out.println("Is the Queue empty? " + queue.isEmpty());
    }
}
