package aula07;

class Circle extends Form{
    
    double radius;
    
    public Circle(String color, double radius) {
        super(color);
        this.radius = radius;
    }
    
    public double area() {
        return Math.PI * radius * radius;
    }
    
    public double perimeter() {
        return 2 * Math.PI * radius;
    }
    

    public Circle() {
    }

    public double getradius() {
        return this.radius;
    }

    public void setradius(double radius) {
        this.radius = radius;
    }

    public Circle radius(double radius) {
        setradius(radius);
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (!(o instanceof Circle)) {
            return false;
        }
        Circle circulo = (Circle) o;
        return radius == circulo.radius;
    }

    
    @Override
    public String toString() {
        return "{" +
            " radius= " + getradius() + "; area=" + area() + "; perimeter= " + perimeter() + "; color= " + color + 
            "}";
    }
    

}
