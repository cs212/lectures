import java.util.Collections;
import java.util.TreeSet;


public class RemoveDemo {

    /**
     * Demonstrates that modifying a collection while iterating
     * through that collection is a bad idea.
     *
     * @param args - unused
     */
    public static void main(String[] args) {
        TreeSet<String> words = new TreeSet<>();
        Collections.addAll(words, new String[] {
                "ant", "bat",
                "cat", "rat"});

        // Attempt 1: Traditional For Loop
        TreeSet<String> copy = new TreeSet<>(words);

        for (int i = 0; i < copy.size(); i++) {
            System.out.printf("i: %d size: %d element: %s%n",
                    i, copy.size(), copy.pollFirst());
        }

        System.out.printf("%d elements remaining %n%n", copy.size());

        // Notice that we do not see cat or rat in the output.

        // Attempt 2: Enhanced For Loop
        try {
            copy = new TreeSet<>(words);

            for (String element : copy) {
                System.out.println(copy.pollFirst());
            }
        }
        catch (Exception ex) {
            ex.printStackTrace(System.out);
        }

        System.out.printf("%d elements remaining %n%n", copy.size());

        // Notice that the above code throws an exception!

        // Attempt 3: While Loop (Works Properly)
        copy = new TreeSet<>(words);

        while (copy.size() > 0) {
            System.out.println(copy.pollFirst());
        }

        System.out.printf("%d elements remaining %n%n", copy.size());

        // Notice that this will let you iterate and remove at the same time.
    }

}
