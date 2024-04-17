package aula02;

import java.util.Scanner;

public class Ex4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduza o montante investido e a taxa de juro-> ");
        double investido = sc.nextDouble();
        double juro = sc.nextDouble();
        sc.close();
        juro = juro*0.01;
        int meses = 3;
        double valor = investido*Math.pow((1+juro),meses);
        System.out.print(valor);
        
    }

}
