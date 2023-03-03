package aula03;
import java.util.Scanner;
import java.util.Random;

public class Ex04 {
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        Random randomDouble = new Random();

        System.out.print("Número de alunos: ");
        int alunos = sc.nextInt();

        System.out.printf("\n%5s %7s %7s\n", "NotaT", "NotaP", "Pauta");
        for (int i = alunos; i>= 1; i--) {
            int pauta = 0;
            double notaT = randomDouble.nextDouble(20.0);
            double notaP = randomDouble.nextDouble(20.0);
            

            if (notaT < 7.0 || notaP < 7.0) {
                pauta = 66;
            }else {
                pauta = (int) ((notaT * 0.4) + (notaP * 0.6));
            }

            System.out.printf("%5.1f %7.1f %7d\n", notaT, notaP, pauta);
        }

        sc.close();
    }
}
