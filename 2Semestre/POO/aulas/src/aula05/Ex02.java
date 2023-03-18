package aula05;
import java.util.Scanner;

public class Ex02 {
    static Scanner sc = new Scanner(System.in);
    

    public static void main(String[] args) {

        Calendar[] calendars = new Calendar[1];


        //System.out.print(calendars[0].firstWeekdayOfMonth(7));
        //calendars[0].printMonth(9);

        //add event
        //System.out.print("Day: ");
        //int dayEvent = sc.nextInt();

        //System.out.print("Month: ");
        //int monthEvent = sc.nextInt();
        
        //calendars[0].addEvent(dayEvent, monthEvent);
        //calendars[0].printMonth(monthEvent);

        //menu
        while (true) {
            System.out.println("Calendar options: ");
            System.out.println("1 - create calendar");
            System.out.println("2 - print calendar month");
            System.out.println("3 -  print calendar");
            System.out.println("4 -  add event");
            System.out.println("5 -  remove event");
            System.out.println("0 - exit");
            int choice = sc.nextInt();

            if (choice == 0) {
                break;

            }  else if(choice == 1) {
                System.out.print("Year: ");
                int year = sc.nextInt();

                System.out.print("First day of the year (1-Sunday; 7- Saturday): ");
                int firstday = sc.nextInt();
        
                calendars[0] = new Calendar(year, firstday);

            }else if (choice == 2) {
                System.out.println("Month: ");
                int month = sc.nextInt();

                calendars[0].printMonth(month);

            }else if (choice == 3) {
                for (int i = 1; i < 13; i++) {
                    calendars[0].printMonth(i);
                }

            }else if (choice == 4) {
                System.out.print("Day: ");
                int dayEvent = sc.nextInt();
                    
                System.out.print("Month: ");
                int monthEvent = sc.nextInt();
        
                calendars[0].addEvent(dayEvent, monthEvent);

            }else if (choice == 5) {
                System.out.print("Day: ");
                int dayEvent = sc.nextInt();
                    
                System.out.print("Month: ");
                int monthEvent = sc.nextInt();
        
                calendars[0].removeEvent(dayEvent, monthEvent);
            }

        }
        

    }
}

class Calendar {

    int year;
    int firstday;
    int month;

    String[] monthsYear = {"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"};
    int[][] events= new int[13][32];

    DateYMD date = new DateYMD(1, 1, year);

    public Calendar(int year, int firstday) {
        this.year = year;
        this.firstday = firstday;
    }

    public int year() {
        return year;
    }

    public int firstWeekdayOfYear() {
        return firstday;
    }

    

    public int firstWeekdayOfMonth(int month) {
        
        int weekday = firstday;

        for (int i = 1; i < month; i++) {
            
            for (int j= 0; j < date.monthDays(i, year); j++) {
                
                if (weekday == 7) {
                    weekday = 1;
                }else {
                    weekday++;
                }
                
            }
            
        }

        return weekday;

    }

    public void printMonth(int month) {
        System.out.printf("\n%15s %4d\n", monthsYear[month-1], year);
        System.out.printf("%3s %3s %3s %3s %3s %3s %3s\n", "Sun", "Mon", "Tue", "Wen", "Thu", "Fri", "Sat");
        int count = firstWeekdayOfMonth(month);

        
        for (int i = 0; i < count-1; i++) {
            
            System.out.printf("%3s ", "  ");
            
        }
        for (int i = 1; i <= date.monthDays(month, year); i++) {
            if (events[month][i] == 1) {
                System.out.printf("*%2d ", i);
            }else {
                System.out.printf("%3d ",i);
            }
            
            if (count == 7) {
                System.out.print("\n");
                count = 1;
            }else {
                count ++;
            }
            
        }
    }

    public int addEvent(int day, int month) {
        return events[month][day] = 1;
    }

    public int removeEvent(int day, int month) {
        return events[month][day] = 0;
    }
}