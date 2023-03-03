package aula03;
import java.util.Scanner;

public class Ex05 {
    static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {

        System.out.print("Escreva uma data mm/yyyy: ");
        String data = sc.next();
        System.out.print("Começo do mês (1= Segunda; 2=Terça; 3=Quarta; 4=Quinta; 5=Sexta; 6=Sábado; 7=Domingo): ");
        int diaSemana = sc.nextInt();


        String[] dataSeparada = data.split("/");
        
        int mes = Integer.parseInt(dataSeparada[0]);
        int ano = Integer.parseInt(dataSeparada[1]);

        String[] mesesAno = {"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"};

        String mesEscolhido = mesesAno[mes-1];
        System.out.printf("\n%10s %d",mesEscolhido, ano);

        System.out.print("\nSu Mo Tu We Th Fr Sa\n");


        int diasmes = DiasMes(mes, ano);
        
       int[] calendario = new int[diaSemana+diasmes];
       int count = 0;

       if (diaSemana != 7) {
        for (int i = 0; i < diaSemana; i++) {
            count++;
            System.out.printf("%2s ", "  ");
           }
       }
       


       for (int i = diaSemana; i < diaSemana+diasmes; i++) {
            
        
            calendario[i] = i - diaSemana + 1;
            count++;
            if (count == 7) {
                System.out.printf("%2d \n", calendario[i]);
                count = 0;
            } else {
                
                System.out.printf("%2d ", calendario[i]);
                
            }
            
       }
        


    }

    private static Integer DiasMes(int mes, int ano) {
        switch(mes) {
            case 1:
            case 3:
            case 5: 
            case 7:
            case 8:
            case 10:
            case 12:
                return 31;
            
            case 2: 
                if (AnoBissexto(ano)) {
                    return 29; 

                }else {
                    return 28;
                }
            default:
                return 30;
        }
    }
   
    private static Boolean AnoBissexto(int ano) {
        if (ano % 4 != 0) {
            return false;
        } else if (ano % 100 != 0) {
            return true;
        } else if (ano % 400 != 0) {
            return false;
        } else {
            return true;
        }
    }

}   
    
