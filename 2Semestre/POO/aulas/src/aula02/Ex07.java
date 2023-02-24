package aula02;
import java.util.Scanner;

public class Ex07 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        System.out.print("Cordenada x do ponto p1: ");
        double xp1 = sc.nextDouble();

        System.out.print("Cordenada y do ponto p1: ");
        double yp1 = sc.nextDouble();

        System.out.print("Cordenada x do ponto p2: ");
        double xp2 = sc.nextDouble();

        System.out.print("Cordenada y do ponto p2: ");
        double yp2 = sc.nextDouble();

        double distanciap1p2 = Math.sqrt(Math.pow(xp1+xp2, 2)+ Math.pow(yp1+yp2, 2));

        System.out.printf("A distância entre os pontos p1 e p2 é de %.2f.", distanciap1p2);

        sc.close();
    }
}
