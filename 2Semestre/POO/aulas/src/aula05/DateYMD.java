package aula05;

public class DateYMD {
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

    public boolean valid() {
        if(day > 0 && day <= monthDays(month, year) && validMonth(month) && year > 0) {
            return true;
        }else {
            return false;
        }
    }

    public String toString() {
        
        return String.format("%4d-%d-%d",year, month, day);
    }
}