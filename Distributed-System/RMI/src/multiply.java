import java.rmi.Remote;
import java.rmi.RemoteException;

public interface multiply extends Remote {
    public int multiply (int n1, int n2) throws RemoteException;
    public int factorial(int n1) throws  RemoteException;
    public float combination(int n, int r) throws RemoteException;
}
