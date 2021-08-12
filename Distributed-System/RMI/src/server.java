
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.rmi.server.UnicastRemoteObject;

public class server extends UnicastRemoteObject implements multiply {

    public server() throws RemoteException{
        super();
    }
    public int multiply(int n1, int n2) throws RemoteException{
        return n1 * n2;
    }

    public int factorial(int n1) throws RemoteException{
        int temp = n1, prod = 1;
        while(temp != 1){
            prod *= temp;
            temp--;
        }
        return prod;
    }

    public float combination(int n, int r) throws RemoteException {
        return (float)factorial(n)/(factorial(n-r) * factorial(r));
    }

    public static void main(String[] args) throws RemoteException {
        try{
            Registry reg = LocateRegistry.createRegistry(8000);
            reg.rebind("server", new server());
            System.out.println("Server is ready!");

        }catch (RemoteException e){
            System.out.println("Error message is "+e);
        }
    }
}
