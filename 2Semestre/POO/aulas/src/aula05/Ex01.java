package aula05;
import java.util.Scanner;



public class Ex01 {
    static Scanner sc = new Scanner(System.in);
    static int i = 0;
    public static void main(String[] args) {
        DateYMD[] dates = new DateYMD[10];
        while (true) {
            System.out.println("1 - Create new date");
            System.out.println("2 - Show current date");
            System.out.println("3 - Increment date");
            System.out.println("4 - Decrement date");
            System.out.println("0 - Exit");

            int choice = sc.nextInt();
            
            
            
            if (choice == 1) {
                System.out.print("Date: ");
                sc.nextLine();
                String[] date =  sc.nextLine().split("/");

                dates[i] = new DateYMD(Integer.parseInt(date[0]), Integer.parseInt(date[1]), Integer.parseInt(date[2]));

                if (dates[i].validMonth(dates[i].month) == false || dates[i].valid() == false) {
                    System.out.print("Invalid date!\n");
                }

                i++;
                
            }else if (choice == 2) {
                if (i == 0) {
                    System.out.println("No date registed!");
                }else {
                    dates[i-1].toString();
                }
                
                
                }else if (choice == 3) {
                    DateYMD date = dates[i-1];
                    if (date.day < date.monthDays(date.month, date.year)) {
                        date.day += 1;
                        
                    }else if (date.day == date.monthDays(date.month, date.year)) {
                        date.day = 1;
                        
                        if (date.month == 12) {
                            date.month = 1;
                            date.year += 1;
                        }else {
                            date.month += 1;
                        }
                    }

                }else if (choice == 4) {
                    DateYMD date = dates[i-1];

                    if (date.day > 1) {
                        date.day -= 1;

                    }else if (date.day == 1) {
                        date.day = date.monthDays(date.month - 1, date.year);
                        if (date.month == 1) {
                            date.day = 31;
                            date.month = 12;
                            date.year -= 1;
                        }else {
                            date.month -= 1;
                        }
                        
                    }

                }else if (choice == 0) {
                    break;
                }
            
        } 
        
        
    }
}

