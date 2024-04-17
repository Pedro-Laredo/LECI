package aula02;

import java.util.Scanner;

public class Ex7 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduza as coordenadas do ponto 1 (x y)-> ");
        double x1 = sc.nextDouble();
        double y1 = sc.nextDouble();
        System.out.print("Introduza as coordenadas do ponto 2 (x y)-> ");
        double x2 = sc.nextDouble();
        double y2 = sc.nextDouble();
        double x = x2-x1;
        double y = y2-y1;
        sc.close();
        double distancia = Math.sqrt(Math.pow(x,2)+Math.pow(y,2));
        System.out.print("A distancia entre os dois pontos é de " +distancia + " unidades de comprimento");
    }

}
