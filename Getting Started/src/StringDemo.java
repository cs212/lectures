/**
 * Demonstrates different character classes when used in the
 * {@link String#replaceAll(String, String) method.
 */
public class StringDemo {

    public static void main(String[] args) {
        String test = "Aa, Bb-Cc & Dd \t (Ee) F_f 123";

        // demonstrates result of different character classes
        // note: the [ ] square brackets are not part of the original string!
        System.out.println("  Original: [" + test + "]");
        System.out.println("Replace \\s: [" + test.replaceAll("\\s", "") + "]");
        System.out.println("Replace \\S: [" + test.replaceAll("\\S", "") + "]");
        System.out.println("Replace \\w: [" + test.replaceAll("\\w", "") + "]");
        System.out.println("Replace \\W: [" + test.replaceAll("\\W", "") + "]");
    }
}
