package aula02;
import java.util.Scanner;

public class Ex05 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        double v1 = -1;
        while (v1 <= 0) {
            System.out.print("Velocidade1: ");
            v1 = sc.nextDouble();
        }

        double d1 = -1;
        while (d1 <= 0) {
            System.out.print("Distância1: ");
            d1 = sc.nextDouble();
        }

        double v2 = -1;
        while (v2 <= 0) {
            System.out.print("Velocidade2: ");
            v2 = sc.nextDouble();
        }
        double d2 = -1;
        while (d2 <= 0) {
            System.out.print("Distância2: ");
            d2 = sc.nextDouble();
        }
        double t1 = d1 / v1;
        double t2 = d2 / v2;
        double vm = (d1 + d2) / (t1 + t2);
        
        System.out.printf("A velocidade média é %.2f m/s.", vm);

        sc.close();
    }
}
