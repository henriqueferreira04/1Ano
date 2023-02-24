package aula02;
import java.util.Scanner;

public class Ex04 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Montante investido: ");
        double montante = sc.nextDouble();

        System.out.print("Taxa de juro mensal: ");
        double juros = sc.nextDouble();

        double taxa = 0;
        double montante3meses = montante;
        for (int i = 0; i < 3; i++) {
            taxa = montante3meses * (juros / 100);
            montante3meses += taxa;
        }
        
        System.out.printf("Para um investimento de %.1f euros e uma taxa de %.1f o montante finalde 3 meses será de %.3f euros.", montante, juros, montante3meses );

        sc.close();
    }
}
