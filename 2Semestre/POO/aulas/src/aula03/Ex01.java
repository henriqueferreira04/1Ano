package aula03;
import java.util.Scanner;

public class Ex01 {

    public static void main(String[] args) {
        int soma = 0;
        int num = 0;
        Scanner sc = new Scanner(System.in);

        while (num <= 0) {
            System.out.print("Número inteiro positivo: ");
            num = sc.nextInt();
        }
        

        for (int i = num; i > 1; i--) {

            if (isPrime(i) == true) {
                soma += i;

            }
        }

        System.out.printf("A soma dos números primos é %2d", soma);

        sc.close();
    }
    private static boolean isPrime(int n){
  
        for (int i = 2; i<= Math.sqrt(n);i++){
            if (n % i == 0){
                return false;
            }
        }
        return true;
    }

    
}
    