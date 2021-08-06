import java.rmi.NotBoundException;
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.util.Scanner;

public class client {
    public static void main(String[] args) throws NotBoundException, RemoteException {
        client c = new client();
        c.connection();

    }

    public void connection() throws RemoteException, NotBoundException {
        try{
            Scanner sc = new Scanner(System.in);
            System.out.println("Enter two numbers to Multiply");
            int num1 = sc.nextInt(), num2 = sc.nextInt();

            Registry reg = LocateRegistry.getRegistry("localhost", 8000);
            multiply mul = (multiply) reg.lookup("server");
            System.out.println("Combination is " + mul.combination(num1, num2));
            System.out.println("Result is " + mul.multiply(num1, num2));
        }catch(RemoteException e){
            System.out.println("Error is " + e);
        }
    }
}
