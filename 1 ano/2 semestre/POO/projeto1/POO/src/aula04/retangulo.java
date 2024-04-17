package aula04;

import java.util.Scanner;

public class retangulo {
    double comprimento;
    double altura;
    Scanner sc = new Scanner(System.in);
    retangulo(){
        while(true){
            System.out.println("comprimento? ");
            this.comprimento = sc.nextDouble();
            System.out.println("Altura? ");
            this.altura = sc.nextDouble();
            if(comprimento<=0 || altura<=0){
                System.out.print("Comprimentos introduzidos inválidos");
            }
            else{
                break;
            }
        }
    }
    static double perimetro(double comprimento, double altura){
        return (comprimento+altura)*2;
    }
    static double area(double comprimento, double altura){
        return comprimento*altura;
    }

}
