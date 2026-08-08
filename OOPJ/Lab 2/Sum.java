// Write a program to get 2 numbers from the user and print the sum of two numbers using scanner class
import java.util.*;
public class Sum{
    public static void main(String[] args)
    {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter first number: ");
        int num1 = sc.nextInt();
        System.out.print("Enter Second number: ");
        int num2 = sc.nextInt();
        System.out.print("Addition of " + num1 + " & " +num2 + " is " +  (num1+num2));
       
    }
}
//using command line 
import java.util.*;
public class cmdAdd {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int num1 = Integer.parseInt(args[0]);
        int num2 = Integer.parseInt(args[1]);
        System.out.println("Sum: " + (num1 + num2));
    }
}
