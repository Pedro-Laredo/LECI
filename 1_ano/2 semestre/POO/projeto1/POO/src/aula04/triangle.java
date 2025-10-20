package aula04;

import java.util.Scanner;


public class triangle {
    double lado1;
    double lado2;
    double lado3;
    Scanner sc = new Scanner(System.in);
    triangle(){
        while (true) {
            System.out.println("Lado1:");
            this.lado1 = sc.nextDouble();
            System.out.println("Lado2:");
            this.lado2 = sc.nextDouble();
            System.out.println("Lado3:");
            this.lado3 = sc.nextDouble();
            if (lado1 <= 0 || lado2 <= 0 || lado3 <= 0) {
                System.out.print("\nTodos os lados tem de ser positivos.");
            }
            if (lado1 + lado2 <= lado3 || lado1 + lado3 <= lado2 || lado2 + lado3 <= lado1) {
                System.out.print("\n A soma de dois lados tem de ser maior que o terceiro lado .");
            }
            else{
                break;
            }
        }
    }
    static double perimetro(double lado1,double lado2,double lado3){
        return lado1+lado2+lado3;
    }
    static double area(double lado1,double lado2,double lado3){
        double p = (perimetro(lado1, lado2, lado3))/2;
        return (java.lang.Math.sqrt(p*(p-lado1)*(p-lado2)*(p-lado3)));
    }
}
    


