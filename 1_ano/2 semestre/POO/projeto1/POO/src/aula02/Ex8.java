package aula02;

import java.util.Scanner;

public class Ex8 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        while (true) {
            System.out.print("Introduza os valores dos catetos ");
            float cateto1= sc.nextFloat();
            float cateto2 = sc.nextFloat();
            if(cateto1>0 && cateto2>0){

                double hip = Math.pow(cateto1,2) + Math.pow(cateto2,2);
                double angulo = Math.toDegrees(Math.acos(cateto1 / hip));
                System.out.print("O valor da hipotenusa é " +hip+" unidades de comprimento e angulo formado entre o lado A e a hipotenusa é de " +angulo + " graus" );
                break;
            }
            else{
                System.out.print("Os valores introduzidos não são validos ");
            }
            
        }
        sc.close();
    }

}
