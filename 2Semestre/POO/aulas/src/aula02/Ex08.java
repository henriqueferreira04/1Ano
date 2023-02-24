package aula02;
import java.util.Scanner;

public class Ex08 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        double catetoA = -1;
        while (catetoA <= 0) {
            System.out.print("Cateto A: ");
            catetoA = sc.nextDouble();
        }
        double catetoB = -1;
        while (catetoB <= 0) {
            System.out.print("Cateto B: ");
            catetoB = sc.nextDouble();
        }

        double hipotenusa = Math.sqrt(Math.pow(catetoA,2)+ Math.pow(catetoB,2));

        System.out.printf("O valor da hipotenusa com os cateto A e B é %.1f.\n", hipotenusa);

        double angulo = Math.toDegrees(Math.asin(catetoA / hipotenusa));

        System.out.printf("O ângulo entre o cateto A e a hipotenusa é %.2f graus.", angulo);

        sc.close();
    }
}
