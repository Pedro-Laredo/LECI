package aula04;
import java.util.Scanner;

public class circle {
    Scanner sc = new Scanner(System.in);
    double raio;
    circle(){
        while (true) {
            System.out.print("\nIntroduza o raio do círculo: ");
            this.raio = sc.nextDouble();
            if(raio<=0){
                System.out.println("\nValor introduzido inválido");
            }
            else{
                break;
            }
        }
    }
    static double perimetro(double raio){
        return Math.PI*2*raio;
    }
    static double area(double raio){
        return Math.PI*raio*raio;
    }

}
