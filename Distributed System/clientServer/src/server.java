import java.io.IOException;
import java.io.PrintStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Scanner;

class Combination{
     private int factorial(int n) {
        int temp = n, prod = 1;
        while (temp != 1) {
            prod *= temp;
            temp--;
        }
        return prod;
    }
    public float combinationCalc(int n, int r){
        return (float)factorial(n)/(factorial(n-r) * factorial(r));
    }

}

public class server {
    public static void main(String[] args) throws IOException {
        int number1, number2;
        float result;

        // Server Socket
        ServerSocket ss = new ServerSocket(8000);

        Socket so = ss.accept();

        System.out.println("Server is Ready!");
        Scanner sc = new Scanner(so.getInputStream());
        number1 = sc.nextInt();  // Stream input from client
        number2 = sc.nextInt();

        Combination cb = new Combination();

        result = cb.combinationCalc(number1, number2);    // manipulation to result

        //output to stream
        PrintStream p = new PrintStream(so.getOutputStream());
        p.println(result);
    }


}
