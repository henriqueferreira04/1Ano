package aula02;
import java.util.Scanner;

public class Ex10 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        int contador = 0;
        
        System.out.print("Introduza um número: ");
        double numero1 = sc.nextDouble();
        double soma = numero1;
        double n = numero1 - 1;
        double max = numero1;
        double min = numero1;

        while (n != numero1) {
            System.out.print("Número: ");
            n = sc.nextDouble();
            contador++;
            soma += n;
            if (n > max) {
                max = n;
            }
            if (n < min) {
                min =n;
            }
            
        }

        double media = soma / contador;
        System.out.printf("O valor máximo é %.2f, o valor mínimo %.2f, a média é %.2f e foram lidos %d números.", max, min, media, contador);

        sc.close();

    
    } 
}
