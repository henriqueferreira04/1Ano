package aula02;
import java.util.Scanner;

public class Ex06 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int segundos = -1;
        while (segundos < 0) {
            System.out.print("Tempo em segundos: ");
            segundos = sc.nextInt();
        }
        int horas = segundos / 3600;
        int minutos = (segundos % 3600) / 60;
        int segundosrestantes = segundos % 60;

        System.out.printf("%d segundos são %d:%d:%d.",segundos, horas, minutos, segundosrestantes);

        sc.close();
    }
}
