package aula07;
import java.util.Scanner;

public class Ex02 {
    static Scanner sc = new Scanner(System.in);
    static int i = 0;
    public static void main(String[] args) {
        DateYMD[] dates = new DateYMD[10];
        while (true) {
            System.out.println("1 - Create new date");
            System.out.println("2 - Show current date");
            System.out.println("3 - Increment date");
            System.out.println("4 - Decrement date");
            System.out.println("5 - Distance since the first day of the year 2000");
            System.out.println("0 - Exit");

        
            int option = sc.nextInt();
            sc.nextLine();

            switch (option) {
                case 1:

                    System.out.print("Date (dd/mm/yyyy): ");
                    
                    String[] complDate =  sc.nextLine().split("/");

                    DateYMD date = new DateYMD(Integer.parseInt(complDate[0]), Integer.parseInt(complDate[1]), Integer.parseInt(complDate[2]));
                    
                    if (date.valid()) {
                        dates[i] = date;
                        i++;
                    }else {
                        System.out.println("Invalid date");
                    }
                    
                    break;

                case 2:
                    
                    System.out.println(dates[i-1].toString());
                    
                    break;
                case 3:
                    for (int j = 0; j < i; j++) {
                        dates[j].increment();
                    }
                    break;
                case 4:
                    for (int j = 0; j < i; j++) {
                        dates[j].decrement();
                    }
                    break;

                case 5:
                    DateND dateinDays = new DateND(dates[i-1].day, dates[i-1].month, dates[i-1].year);

                    System.out.printf("The distance to the year 2000 is %d days\n", dateinDays.distanceInDaysToYear2000(dateinDays));

                    break;
                case 0:
                    System.exit(0);
                    break;
                default:
                    System.out.println("Invalid option");
                    break;
            }  
        
        
        }
    }
}

