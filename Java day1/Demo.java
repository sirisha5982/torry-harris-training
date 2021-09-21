import java.util.Scanner;

public class Demo {
    public static void main(String[] args)
    {
        Scanner s = new Scanner(System.in);
        String user;
        int n;
        user = s.next();
        n=s.nextInt();
        for (int i = 0; i < 10; i++) {
            System.out.println(user);
        }
        System.out.println(n);
    }
}