
public class ArgumentDemo {

    public static void main(String[] args) {
        System.out.printf("There are %d arguments.%n%n", args.length);

        for (int i = 0; i < args.length; i++) {
            System.out.printf("%2d: %s%n", i, args[i]);
        }
    }
}
