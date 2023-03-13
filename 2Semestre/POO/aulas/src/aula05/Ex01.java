package aula05;
import java.util.Scanner;

public class Ex01 {
    static Scanner sc = new Scanner(System.in);
    public static void main(String[] args) {
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

                DateYMD dateSeparated = new DateYMD(Integer.parseInt(date[0]), Integer.parseInt(date[1]), Integer.parseInt(date[2]));

                if (dateSeparated.validMonth(dateSeparated.month) == false || dateSeparated.valid(dateSeparated.day, dateSeparated.month, dateSeparated.year) == false) {
                    System.out.print("Invalid date!\n");
                }

                
            }else if (choice == 2) {

                dateSeparated.toString();

                }else if (choice == 3) {

                }else if (choice == 4) {

                }else if (choice == 0) {
                    break;
                }
            
            
            

            
            

            
            
        } 
        
        
    }
}

class DateYMD {
    public int day;
    public int month;
    public int year;

    public DateYMD(int day, int month, int year) {
        this.day = day;
        this.month = month;
        this.year = year;
    }

    public boolean validMonth(int month) {
        if (month > 0 && month < 13) {
            return true;
        }else {
            return false;
        }   
    }


    public static Boolean leapYear(int year) {
        if (year % 4 != 0) {
            return false;
        } else if (year % 100 != 0) {
            return true;
        } else if (year % 400 != 0) {
            return false;
        } else {
            return true;
        }
    } 


    public int monthDays(int month, int year) {
        switch(month) {
            case 1:
            case 3:
            case 5: 
            case 7:
            case 8:
            case 10:
            case 12:
                return 31;
            
            case 2: 
                if (leapYear(year)) {
                    return 29; 

                }else {
                    return 28;
                }
            default:
                return 30;
        }
        
    }

    public boolean valid(int day, int month, int year) {
        if(day > 0 && day <= monthDays(month, year) && validMonth(month)) {
            return true;
        }else {
            return false;
        }
    }

    public String toString() {
        return year + "-" + month + "-" + day;
    }
}
