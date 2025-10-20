package aula02;

import java.util.Scanner;

public class Ex1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduza o valor em km ");
        float km = sc.nextFloat();
        sc.close();
        float miles = km/1.609f;
        System.out.print(km+" Kilómetros equivale a " +miles + " milhas");
        
    }

}
