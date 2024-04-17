package aula02;

import java.util.Scanner;

public class Ex2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduza um valor em graus Celsius ");
        float graus = sc.nextFloat();
        sc.close();
        float fahrenheit = 1.8f * graus +32;
        System.out.print(graus +" graus Celsius equivale a " + fahrenheit + " graus fahrenheit");
    }

}
