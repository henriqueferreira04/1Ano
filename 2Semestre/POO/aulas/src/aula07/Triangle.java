package aula07;

class Triangle extends Form{

   int lado1;
   int lado2;
   int lado3;

    public Triangle(String color, int lado1, int lado2, int lado3) {
        super(color);
        this.lado1 = lado1;
        this.lado2 = lado2;
        this.lado3 = lado3;
    }
    

    public Triangle() {
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

    public int getLado3() {
        return this.lado3;
    }

    public void setLado3(int lado3) {
        this.lado3 = lado3;
    }

    public Triangle lado1(int lado1) {
        setLado1(lado1);
        return this;
    }

    public Triangle lado2(int lado2) {
        setLado2(lado2);
        return this;
    }

    public Triangle lado3(int lado3) {
        setLado3(lado3);
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (o == this)
            return true;
        if (!(o instanceof Triangle)) {
            return false;
        }
        Triangle triangle = (Triangle) o;
        return lado1 == triangle.lado1 && lado2 == triangle.lado2 && lado3 == triangle.lado3;
    }

    @Override
    public double area() {
        
        return (lado1 * lado2) / 2;
    }


    @Override
    public double perimeter() {
            
        return lado1 + lado2 + lado3;
    }


    @Override
    public String toString() {
        return "{" +
            " lado1= " + getLado1()  +
            "; lado2= " + getLado2()  +
            "; lado3= " + getLado3()  + "; area= " + area() + "; perimeter= " + perimeter() + "; color= " + color +
            "}";
    }


    


}
