package aula04;



class Product {
    
    private String name;
    private double price;
    private int quantity;

    public Product(String name, double price, int quantity) {
        this.name = name;
        this.price = price;
        this.quantity = quantity;
    }

    public double getTotalValue() {
        return price * quantity;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public int  getQuantity() {
        return quantity;
    }
}


class CashRegister {

    // TODO: completar implementação da classe

    
    
    double totalprice = 0;
    Product[] produtos = new Product[5];
    
    int i = 0;
    public void addProduct(Product produto) {
        
        produtos[i] = produto;
        i++;
    }

    public String toString() {

        System.out.printf("%-12s %7s %10s %8s\n", "Product", "Price", "Quantity", "Total");

        for (int i = 0; i < produtos.length; i++) {
            System.out.printf("%-12s %7.2f %10d %8.2f\n", produtos[i].getName(), produtos[i].getPrice(), produtos[i].getQuantity(), produtos[i].getTotalValue());
            totalprice += produtos[i].getTotalValue(); 
        }

        return "\nTotal price: "+ totalprice;
    }



}

public class CashRegisterDemo {

    public static void main(String[] args) {

        // Cria e adiciona 5 produtos
        CashRegister cr = new CashRegister();
        cr.addProduct(new Product("Book", 9.99, 3));
        cr.addProduct(new Product("Pen", 1.99, 10));
        cr.addProduct(new Product("Headphones", 29.99, 2));
        cr.addProduct(new Product("Notebook", 19.99, 5));
        cr.addProduct(new Product("Phone case", 5.99, 1));
        
        // TODO: Listar o conteúdo e valor total
        System.out.println(cr);

    }
}