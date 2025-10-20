package aula02;

import java.util.Scanner;

public class Ex6 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduza o valor em segundos-> ");
        int segundos = sc.nextInt();
        sc.close();
        int horas = segundos/3600;
        int minutos = segundos%3600 /60;
        int segundosFim = segundos %60;
        System.out.print(segundos + " segundos equivalem a  " + horas + "H " + minutos + "min " + segundosFim + "s ");

    }

}
