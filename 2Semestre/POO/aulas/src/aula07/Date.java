package aula07;

public abstract class Date {
    
    
    public abstract boolean validMonth(int month);
    public abstract Boolean leapYear(int year);
    public abstract int monthDays(int month, int year);
    public abstract boolean valid();
    public abstract void increment();
    
}
