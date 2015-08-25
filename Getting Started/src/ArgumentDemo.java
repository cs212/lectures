/**
 * Demonstrates how to access command-line arguments. To set
 * command-line arguments in Eclipse, go to the "Run" menu
 * and configure the "Run Configuration" for this class.
 *
 * Try the following argument string:
 * <pre>
 * one two three-four "five six" seven      eight
 * </pre>
 *
 * Also, try viewing this documentation from the "Javadoc"
 * view pane in Eclipse!
 */
public class ArgumentDemo {

    /**
     * Outputs each of the command-line arguments if present.
     *
     * @param args - command-line arguments
     */
    public static void main(String[] args) {

        if (args.length > 0) {
            System.out.println("Arguments:");

            // traditional loop through system arguments
            for (int i = 0; i < args.length; i++) {
                System.out.printf("%2d: %s%n", i, args[i]);
            }
        }
        else {
            System.out.println("No Arguments");
        }
    }
}
