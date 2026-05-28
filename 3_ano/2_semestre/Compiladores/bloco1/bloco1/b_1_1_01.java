import java.util.Scanner;
import java.util.InputMismatchException;

public class b_1_1_01 {
    static final Scanner input = new Scanner(System.in);

    public static void main(String[] args) {
        double x;

        try {
            if (!input.hasNextDouble()) {
                System.err.println("Invalid number");
                return;
            }
            x = input.nextDouble();
        } catch (InputMismatchException e) {
            System.err.println("Invalid number");
            return;
        }

        if (!input.hasNext()) {
            System.err.println("Invalid operator");
            return;
        }
        String op = input.next();
        if (!op.matches("[*/+-]")) {
            System.err.println("Invalid operator");
            return;
        }
        
        if (!input.hasNextDouble()) {
            System.err.println("Invalid number");
            return;
        }
        double y = input.nextDouble();

        double result;
        switch (op) {
            case "+": result = x + y; break;
            case "-": result = x - y; break;
            case "*": result = x * y; break;
            case "/":
                if (y == 0) {
                    System.err.println("Error: Division by Zero");
                    return;
                }
                result = x / y;
                break;
            default:
                System.err.println("Invalid operator");
                return;
        }

        System.out.println(result);
    }
}