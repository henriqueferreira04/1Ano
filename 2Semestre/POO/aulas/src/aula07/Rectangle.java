package aula07;

class Rectangle extends Form{
    
    int lado1;
    int lado2;
    
    public Rectangle(String color, int lado1, int lado2) {
        super(color);
        this.lado1 = lado1;
        this.lado2 = lado2;
    }

    public Rectangle() {
    }


    public Rectangle(int lado1, int lado2) {
        this.lado1 = lado1;
        this.lado2 = lado2;
    }

    public int getLado1() {
        return this.lado1;
    }

    public void setLado1(int lado1) {
        this.lado1 = lado1;
    }

    public int getLado2() {
        return this.lado2;
    }

    public void setLado2(int lado2) {
        this.lado2 = lado2;
    }

    public Rectangle lado1(int lado1) {
        setLado1(lado1);
        return this;
    }

    public Rectangle lado2(int lado2) {
        setLado2(lado2);
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (!(o instanceof Rectangle)) {
            return false;
        }
        Rectangle rectangle = (Rectangle) o;
        return lado1 == rectangle.lado1 && lado2 == rectangle.lado2;
    }

    @Override
    public double area() {
        
        return lado1 * lado2;
    }

    @Override
    public double perimeter() {
        
        return 2 * (lado1 + lado2);
    }

    @Override
    public String toString() {
        return "{" +
            " lado1= " + getLado1()  +
            "; lado2= " + getLado2()  + "; area= " + area() + "; perimeter= " + perimeter() + "; color= " + color +
            "}";
    }

    

}
