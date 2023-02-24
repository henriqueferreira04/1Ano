package aula02;
import java.util.Scanner;

public class Ex01 {

    public static void main(String[] args) {
        double km;
        Scanner sc = new Scanner(System.in);
        System.out.print("Distância em kilómetros: ");
        km = sc.nextDouble();
        double miles = km / 1.609;
        
        System.out.printf("A disância %.2f kms é igual a %.2f em milhas.\n", km, miles);
        

        sc.close();
    }
}