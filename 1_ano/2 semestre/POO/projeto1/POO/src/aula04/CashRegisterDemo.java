package aula04;
import java.util.ArrayList;
import java.util.List;
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
    private List<Product> products;

    public CashRegister() {
        products = new ArrayList<>();
    }

    public void addProduct(Product product){
        products.add(product);
    }    

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Product Price Quantity Total\n");
        double totalPrice = 0.0;
        for (Product product : products) {
            sb.append(String.format("%-12s $%.2f %d $%.2f%n", product.getName(), product.getPrice(), product.getQuantity(), product.getTotalValue()));
            totalPrice += product.getTotalValue();
        }
        sb.append(String.format("Total: $%.2f%n", totalPrice));
        return sb.toString();
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
        
        
        System.out.println(cr);

    }
}