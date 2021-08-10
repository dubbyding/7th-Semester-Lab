import java.io.IOException;
import java.io.PrintStream;
import java.net.Socket;
import java.util.Scanner;

public class client {
    public static void main(String[] args) throws IOException {
        // socket client side
        Socket s = new Socket("127.0.0.1",8000);

        // input
        int number1, number2;
        float result;
        Scanner sc = new Scanner(System.in);    // user input scanner
        System.out.println("Enter any Number");
        number1 = sc.nextInt();
        System.out.println("Enter another Number");
        number2 = sc.nextInt();

        // stream
        PrintStream p = new PrintStream(s.getOutputStream());
        p.println(number1);
        p.println(number2);

        //output
        Scanner sc1 = new Scanner(s.getInputStream());  // output scanner output
        result = sc1.nextFloat();
        System.out.println(result);
    }
}
