package aula03;
import java.util.Scanner;
import utils.RandomInt;

public class Ex03 {
    
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        String resposta = "S";

        while (resposta.equals("S") || resposta.equals("Sim")) {
            
            int randomNum = RandomInt.RandomInteger(100);
            int num = 0;
            int count = 0;
        

            while (num != randomNum) {
                System.out.print("numero: ");
                num = sc.nextInt();

                if (num < randomNum) {
                    System.out.println("Demasiado abaixo.");

                }else if (num > randomNum) {
                    System.out.println("Demasiado acima.");
                }
                count ++;
            }

            System.out.printf("Acertou. Precisou de %d tentativas.", count);
        
            System.out.print("\nPretende continuar? Prima (S)im: ");
            resposta = sc.next();
        }
    
        sc.close();
    }
    

}
