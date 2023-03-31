package aula07;
import java.util.Scanner;

public class Ex01 {
    static Form[] formas = new Form[20];

    public static void main(String[] args) {
        
        int op;
        int count = 0;
        
        do{
            Scanner sc = new Scanner(System.in);
            System.out.println("1 - Circle");
            System.out.println("2 - Triangle");
            System.out.println("3 - Rectangle");
            System.out.println("4 - List forms");
            System.out.println("5 - Exit");

            System.out.println("Enter the option: ");
            op = sc.nextInt();
            

            switch (op) {
                case 1:
                    
                    System.out.println("Enter the radius: ");
                    double radius = sc.nextDouble();
                    System.out.println("Enter the color: ");
                    String color = sc.next();
                    Circle circle = new Circle(color, radius);
                    
                    if (findForm(circle) == false){
                        formas[count] = circle;
                    }
                    

                    count++;

                    break;
                case 2:
                    System.out.println("Enter the side 1: ");
                    int lado1 = sc.nextInt();
                    System.out.println("Enter the side 2: ");
                    int lado2 = sc.nextInt();
                    System.out.println("Enter the side 3: ");
                    int lado3 = sc.nextInt();
                    System.out.println("Enter the color: ");
                    String color2 = sc.next();
                    Triangle triangle = new Triangle(color2, lado1, lado2, lado3);
                    
                    if (findForm(triangle) == false){
                        formas[count] = triangle;
                    }
                    

                    count++;
                    break;
                case 3:
                    System.out.println("Enter the side 1: ");
                    int lado11 = sc.nextInt();
                    System.out.println("Enter the side 2: ");
                    int lado22 = sc.nextInt();
                    System.out.println("Enter the color: ");
                    String color3 = sc.next();
                    Rectangle rectangel = new Rectangle(color3, lado11, lado22);
                    
                    if (findForm(rectangel) == false){
                        formas[count] = rectangel;
                    }
                    

                    count++;

                    break;
                case 5:
                    System.exit(0);
                    break;
                
                case 4:
                    for (int i = 0; i < formas.length; i++) {
                        if (formas[i] != null) {
                            System.out.println(formas[i]);
                        }
                        
                    }
                    break;
                default:
                    System.out.println("Invalid option");
                    break;
            }

        }while (op != 5);

        
    }

    public static boolean findForm(Form forma) {
        for (int i = 0; i < formas.length; i++) {
            if (formas[i] != null) {
                if ((formas[i].toString()) .equals(forma.toString())) {
                    return true;
                }
            }
            
        }
        return false;
    }

    
}
