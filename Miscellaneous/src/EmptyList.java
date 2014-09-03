import java.util.ArrayList;

public class EmptyList {

    public static void main(String[] args) {

        ArrayList<String> emptyList = new ArrayList<>();

        ArrayList<String> withEmptyString = new ArrayList<>();
        withEmptyString.add("");

        System.out.println("Empty List: " + emptyList);
        System.out.println("Size: " + emptyList.size());

        System.out.println("List with Empty String: " + withEmptyString);
        System.out.println("Size: " + withEmptyString.size());
    }

}
