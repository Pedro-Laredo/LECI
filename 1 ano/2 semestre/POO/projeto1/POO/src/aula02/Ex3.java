package aula02;

import java.util.Scanner;

public class Ex3 {
    public static void main (String[] args){
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduza o valor da massa em KG -> ");
        float m = sc.nextFloat();
        System.out.print("Introduza o valor da temperatura incial -> ");
        float tempInicial = sc.nextFloat();
        System.out.print("Introduza o valor da temperatura final -> ");
        float tempFinal = sc.nextFloat();
        sc.close();
        double energia = m*(tempFinal-tempInicial) * 4184;
        System.out.print("A quantidade de energia necessária é " +energia +" Joules");
    }

}
