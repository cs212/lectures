
public class StaticDemo {

    public static void main(String[] args) {

        /*
         * You can access public static variables and methods without creating
         * any actual widget objects. That is because they belong to the class
         * itself, and the class always exists. That is why these are often
         * called class variables or class methods.
         *
         * That is also why you must initialize static variables immediately.
         */
        System.out.println("The number of widgets is intialized to "
                + StaticWidget.numWidgets + ".");
        StaticWidget.printNum();

        /*
         * When we create a specific widget, we can access its individual ID.
         * Different widgets can have different IDs. These non-static variables
         * and methods are called instance variables and instance methods.
         */
        StaticWidget foo = new StaticWidget();
        System.out.println("Created widget #" + foo.widgetID + ".");

        StaticWidget bar = new StaticWidget();
        bar.printID();

        /*
         * We can still access the static variables and methods, and see how
         * they change as new objects/instances are created.
         */
        StaticWidget.printNum();
    }

}
