package aula02;

import java.util.Scanner;

public class Ex5 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        while (true) {
            System.out.print("Introduza o valor da v1 em km/h");
            double v1 = sc.nextDouble();
            System.out.print("Introduza o valor da d1 em km");
            double d1 = sc.nextDouble();
            System.out.print("Introduza o valor da v2 em km/h ");
            double v2 = sc.nextDouble();
            System.out.print("Introduza o valor da d2 em km");
            double d2 = sc.nextDouble();
            if (v1 > 0 && v2 > 0 && d1 > 0 && d2 > 0){
                double t1 = d1/v1;
                double t2 = d2/v2;
                double tTotal = t1+t2;
                double dTotal = d1+d2;
                double vMedia = dTotal/tTotal;
                System.out.print("A velocidade média entre os dois pontos foi de " + vMedia);
                break;
            }
            else{
                System.out.print("O valor introduzido tem de ser um numero positivo");
            }
            sc.close();
        }
    }

}
