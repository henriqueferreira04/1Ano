package aula02;
import java.util.Scanner;

public class Ex02 {
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Temperatura em graus Celsius: ");
        double grausCelsius = sc.nextDouble();
        double grausFahrenheit = 1.8 * grausCelsius + 32;
        System.out.printf("%.1f (C) são %.1f (F)",grausCelsius, grausFahrenheit);

        sc.close();
    }
}
