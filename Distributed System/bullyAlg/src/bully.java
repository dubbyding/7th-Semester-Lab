import java.io.*;
import java.util.Scanner;

public class bully {
    static int n;
    static int pro[] = new int[100];
    static int sta[] = new int[100];
    static int co;
    public static void main(String args[]) throws IOException{
        System.out.println("Enter no. of process: ");
        Scanner in = new Scanner(System.in);
        n = in.nextInt();
        int i, j;
        for(i = 0; i < n; i++){
            System.out.println("For process " + (i+1) + ":");
            System.out.println("Status: ");
            sta[i] = in.nextInt();
            System.out.println("Priority");
            pro[i] = in.nextInt();
        }
        System.out.println("Which process will initiate election?");
        int ele = in.nextInt();
        for(j = ele-1; j < n; j++){
            elect(j+1);
        }
        System.out.println("Final Coordinator is: " + co);
    }

    static void elect(int ele){
        ele = ele-1;
        for(int i = 0; i < n; i++){
            if(pro[ele]<pro[i]){
                System.out.println("Election message sent from " + (ele+1) + " to " + (i+1));
                if(sta[i]==1)
                    co = (ele+1) + 1;
            }
        }
    }
}