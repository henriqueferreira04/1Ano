package aula07;

public abstract class Form {

    public abstract double area();

    public abstract double perimeter();

    String color;

    public Form() {
    }

    public Form(String color) {
        this.color = color;
    }

    public String getColor() {
        return this.color;
    }
    
}
