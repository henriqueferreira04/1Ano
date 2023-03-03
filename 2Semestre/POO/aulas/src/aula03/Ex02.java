package aula03;
import java.util.Scanner;

public class Ex02 {
    
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int montante = 0;
        double taxaJuro = 0;

        while (montante <= 0 || montante % 1000 != 0) {
            System.out.print("Montante investido: ");
            montante = sc.nextInt();
        }

        while (taxaJuro <= 0 || taxaJuro > 5) {
            System.out.print("Taxa de juro mensal: ");
            taxaJuro = sc.nextDouble();
        }

        
    

        for (int i = 1; i <= 12; i++) {
            montante  += montante * (taxaJuro / 100);
            
            System.out.printf("\nO valor mensal do fundo do mês %d é %2d€.", i, montante);
        }
    
        sc.close();
    }
 }
