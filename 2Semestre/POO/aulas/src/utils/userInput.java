package utils;
import java.util.Scanner;


public class userInput {
    public static boolean ValidNumber() {
        Scanner sc = new Scanner(System.in);

        double min = 0; 
        double max = 0;

        
        while (max <= min) {
            System.out.print("Intervalo de: ");
            min = sc.nextDouble();

            System.out.print("até: ");
            max = sc.nextDouble();
        }

        System.out.print("Number: ");

        double number = sc.nextDouble();

        sc.close();

        if (number >= min && number <= max) {
            return true;
        } else {
            return false;
        }
        
        
    }
}
