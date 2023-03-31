package aula07;

class DateND extends Date{
    
    public int day;
    public int month;
    public int year;

    public DateND(int day, int month, int year) {
        this.day = day;
        this.month = month;
        this.year = year;
    }

    public DateND() {
        
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
        if (validMonth(month)) {
            if (day > 0 && day <= monthDays(month, year)) {
                return true;
            }else {
                return false;
            }
        }else {
            return false;
        }
    }

    public void increment() {
        if (valid()) {
            if (day < monthDays(month, year)) {
                day++;
            }else {
                day = 1;
                if (month < 12) {
                    month++;
                }else {
                    month = 1;
                    year++;
                }
            }
        }
    }

    public int distanceInDaysToYear2000(DateND date) {
        int distance = 0;
        if (date.valid()) {
            if (date.year > 2000) {
                for (int i = 2000; i < date.year; i++) {
                    if (leapYear(i)) {
                        distance += 366;
                    }else {
                        distance += 365;
                    }
                }
                for (int i = 1; i < date.month; i++) {
                    distance += monthDays(i, date.year);
                }
                distance += date.day;
            }else {
                for (int i = date.year; i < 2000; i++) {
                    if (leapYear(i)) {
                        distance += 366;
                    }else {
                        distance += 365;
                    }
                }
                for (int i = 1; i < date.month; i++) {
                    distance += monthDays(i, date.year);
                }
                distance += date.day;
            }
        }
        return distance;
    }
}
