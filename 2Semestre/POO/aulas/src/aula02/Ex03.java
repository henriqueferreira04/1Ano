package aula02;
import java.util.Scanner;

public class Ex03 {
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Quantidade de água(Kg): ");
        double agua = sc.nextDouble();

        System.out.print("Temperatura inicial(C): ");
        double temperaturaInicial = sc.nextDouble();

        System.out.print("Temperatura final(C): ");
        double temperaturaFinal = sc.nextDouble();

        double energia = agua * (temperaturaFinal- temperaturaInicial) * 4184;

        System.out.printf("A energia necessária para aquecer a água é %.2f Joules.", energia);
        sc.close();
    }
}
