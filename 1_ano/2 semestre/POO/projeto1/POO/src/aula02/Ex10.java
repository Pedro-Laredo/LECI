package aula02;

import java.util.Scanner;

public class Ex10 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduza o primeiro numero");
        int primeiroNumero = sc.nextInt();
        int max = primeiroNumero;
        int min = primeiroNumero;
        int numero = 0;
        int soma = 0;
        int n = 1;
        while(primeiroNumero!= numero){
            n ++;
            System.out.print("Introduza um numero ");
            numero = sc.nextInt();
            soma += numero;

            if (numero>max){
                max = numero;
            }
            if(numero<min){
                min = numero;
            }
            if (numero == primeiroNumero){
                float media = soma/n;
                System.out.print("Média: " + media + " max: " + max +" min: " +min+ " Total de numeros lidos: " + n);
                break;

            }
        }   
        
        sc.close();
    }

}
