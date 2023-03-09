package aula04;

public class circle {

    private double radius;

    public circle(double radius){
        assert radius > 0;
        this.radius = radius;

    }

    public double getRadius() {
        return radius;
    }

    public void SetRadius(double radius) {
        this.radius = radius;
    }

    public double getArea() {
        double area = radius * radius * Math.PI;
        return area;
    }

    public boolean Equals(circle c) {
        
        return this.radius == c.getRadius();
    }

    public double getPerimeter() {
        double perimeter = 2 * radius * Math.PI;
        return perimeter;
    }
    
    public String toString() {
        double area = getArea();
        double perimeter = getPerimeter();

        return "\nCircle\nRadius = "+ radius + "\nArea = " + area + "\nPerimeter = " + perimeter; 
    }
}
