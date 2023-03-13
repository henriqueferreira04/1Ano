package aula03;
import java.util.Scanner;

public class Ex06 {
    static Scanner sc = new Scanner(System.in);

    public static void main(String[] args) {
        System.out.print("Escreva: ");

        String frase = sc.nextLine();

        String[] frase1 = frase.split("");
        
        String fraseMinusculas = frase.toLowerCase();

        System.out.printf("\nFrase convertida para minúsculas: %s\n", fraseMinusculas);


        System.out.printf("\nÚltimo caracter da frase: %s\n",frase1[frase1.length-1]);

        System.out.printf("\nOs primeiros 3 caracteres: %s\n",frase.substring(0,3));
    }
}
