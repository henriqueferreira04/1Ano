package aula02;
import java.util.Scanner;

public class Ex09 {
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);

        int n = -1;

        while (n<0) {
            System.out.print("Número positivo: ");
            n = sc.nextInt();
        }

        for (int i = n; i >= 0; i--) {
            if (i == 0) {
                System.out.print(i);
            }else if (i % 10 == 0) {
                System.out.print("\n"+ i +", ");
            }else {
                System.out.print(i + ", ");
            }
            
            
        }
        sc.close();
    }
}
