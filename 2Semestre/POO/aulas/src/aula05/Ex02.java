package aula05;

import java.util.Scanner;

public class Ex02 {
    static Scanner sc = new Scanner(System.in);
    

    public static void main(String[] args) {
        Calendar[] calendar = new Calendar[1];
        
        
        while (true) {
            System.out.println("\nCalendar operations:");
            System.out.println("1 - Create calendar");
            System.out.println("2 - Print calendar month");
            System.out.println("3 - Calendar");
            System.out.println("0 - Exit");

            int choice = sc.nextInt();
            
            if (choice == 1) {
                int year = -1;
                int weekday = -1;
                while (true) {
                    System.out.print("Year: ");
                    year = sc.nextInt();
                    
                    if (year > 0) {
                        break;
                    }
                }
                
                while (true) {
                    System.out.print("Starting weekday(1-Sunday; 7-Saturday): ");
                    weekday = sc.nextInt();
                    if (weekday > 0 && weekday < 8) {
                        break;
                    }
                }

                calendar[0] = new Calendar(year, weekday);
                
                
                
            }else if (choice == 2) {
                int month = 0;
                while (true) {
                    
                    System.out.print("Month: ");
                    month = sc.nextInt();
                    if (month > 0 && month < 13) {
                        break;
                    }
                }
                
                calendar[0].calendarMonth(month);

                sc.nextLine();
                System.out.print("Want to add an event?(T/F) ");
                String event = sc.nextLine();

                if (event.equals("T")) {

                        System.out.print("Day of the event: ");
                        int eventDay = sc.nextInt();
                    calendar[0].addEvent(month, eventDay);;
                }
                
                sc.nextLine();
                System.out.print("Want to remove an event?(T/F) ");
                String event2 = sc.nextLine();
                if (event2.equals("T")) {
                    calendar[0].addEvent(month, -1);
                }


                
            }else if (choice == 3) {

                
                int month = 1;

                for (int i = month; i < 13; i++) {
                    calendar[0].calendarMonth(month);
                    month ++;



                }

                

            }else if (choice == 0) {
                break;
            }

            
        }
        
    }
    
}

class Calendar {
    public int year;
    public int weekday;
    public int eventDay = -1;
    public int month;

    public Calendar(int year, int weekday) {
        this.year = year;
        this.weekday = weekday;
        
    }

    
    public int year() {
        return year;
    }
    
    public int firstWeekdayOfYear() {
        return weekday;
    }
    
    public void calendarMonth(int month) {
        DateYMD date = new DateYMD(1, month, year);

        String[] monthsYear = {"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"};

        System.out.printf("%10s %4d\n", monthsYear[month-1], year);

        int count = 0;

        System.out.printf("Su Mo Tu We Th Fr Sa\n");
        
        
        for (int i = 1; i < weekday; i++) {
            
            System.out.printf("%2s ", " ");
            count ++;
        }

        for (int i = 1; i <= date.monthDays(month, year); i++) {
            
            if (count == 7) {

                System.out.print("\n");
                count = 0; 
            }
            if (event() == month) {
                
                if (eventDay() == i) {
                    System.out.printf("*%d ", i);
                }else {
                    System.out.printf("%2d ", i);
                }
                
                count ++;
            }else {
                System.out.printf("%2d ",i);
            count ++;
            }
            
            
            
        }
        System.out.print("\n");

        if (count == 7){
            weekday = 1;
        }else {
            weekday = count + 1;
        }
       
        
    }
    
    public int eventDay() {
        return eventDay;

    }
    public void addEvent(int month, int eventDay) {
        this.month = month;
        this.eventDay = eventDay;
    }

    public int event() {
        return month;
    }
    
}   
