
public class StaticWidget {

    public static int numWidgets = 0;
    public int widgetID;

    public StaticWidget() {
        StaticWidget.numWidgets++;
        this.widgetID = numWidgets;
    }

    public static void printNum() {
        System.out.println("There are " + numWidgets + " widgets.");
    }

    public void printID() {
        System.out.println("This is widget #" + widgetID + ".");
    }
}
