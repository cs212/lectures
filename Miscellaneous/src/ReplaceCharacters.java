
public class ReplaceCharacters {

    public static void main(String[] args) {

        String text = "ant @# $% bat";

        System.out.println(text.replaceAll("\\W", " "));
        System.out.println(text.replaceAll("\\W+", " "));
    }

}
