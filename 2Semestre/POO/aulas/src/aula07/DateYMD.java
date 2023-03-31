package aula07;

public class DateYMD extends Date{
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


    public Boolean leapYear(int year) {
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

    public void increment() {
        if (day < monthDays(month, year)) {
            day += 1;
            
        }else if (day == monthDays(month, year)) {
            day = 1;
            
            if (month == 12) {
                month = 1;
                year += 1;
            }else {
                month += 1;
            }
        }
    }


  public void decrement() {
    if (day > 1) {
        day -= 1;

    }else if (day == 1) {
        day = monthDays(month - 1, year);
        if (month == 1) {
            day = 31;
            month = 12;
            year -= 1;
        }else {
            month -= 1;
        }
    }
  }

}
