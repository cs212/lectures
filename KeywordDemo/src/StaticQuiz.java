/**
 * Test out how well you understand the static keyword. Which members and
 * methods can be made static? Why or why not?
 *
 * @see StaticDemo
 * @see StaticWidget
 */

/*
 * Suppress all warnings, so you can't cheat by looking at the warnings
 * in Eclipse!
 */
@SuppressWarnings("all")
public class StaticQuiz {

    private boolean cake;
    private String message = "Pie is better than cake.";

    public StaticQuiz() {
        cake = Math.random() > 0.5;
    }

    public void isLie() {
        System.out.println("The cake is a lie.");
    }

    public void isCake() {
        if (cake) {
            System.out.println("Yes, there is cake.");
        }
        else {
            System.out.println("No, there is not cake.");
        }
    }

    public void isBetter() {
        System.out.println(message);
    }
}
