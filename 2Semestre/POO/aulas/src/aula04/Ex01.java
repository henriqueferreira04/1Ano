package aula04;
import java.util.Scanner;

public class Ex01 {
    static Scanner sc = new Scanner(System.in);
    public static void main(String[] args){

        //Menu
        
        while (true) {
            System.out.println("\nCircle    (1)");
            System.out.println("Triangle  (2)");
            System.out.println("Rectangle (3)");
            System.out.println("Finish    (0)");
            System.out.print("Choose: ");
            int choice = sc.nextInt();

            if (choice == 1) {
                Ex01 circle = new Ex01();
                double c1 = circle.Circle();
                
                double c2 = circle.Circle();
    
                
    
            }else if (choice == 0) {
                break;
            }
            
        }
        
        
        
        



        
    }
    
    private double Circle() {

        System.out.print("\nCircle, radius: ");
        double radius1 = sc.nextDouble();


        circle c1 = new circle(radius1);
    
        //Area
        //System.out.printf("Area = %.2fcm\n",c1.getArea());


        //Perimetro
        //System.out.printf("Perimeter = %.2fcm\n",c1.getPerimeter());

        //toString
        System.out.print(c1.toString());
        return radius1;
    }
   

    
}
