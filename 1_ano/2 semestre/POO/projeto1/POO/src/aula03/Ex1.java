package aula03;

import java.util.Scanner;

public class Ex1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double num = 0;
        while(true){
            System.out.println("Introduza um numero positivo-> ");
            num = sc.nextDouble();
            if(num>0){
                break;
            }
            else{
                System.out.println("Valor Introduzido inválido! ");
                continue;
            }
        }
        sc.close();
        double i = 2;
        double sum = 0;
        for(;i<=num;){
            if(funcao1(i)==true){
                sum = sum+i;
            }
            i++;
        }   
        System.out.print(sum);
        
    }
    public static boolean funcao1(double num){
        int p = 2;
        for (;p<num;) {
            if(num%p==0){
                return false;
            }
            p++; 
        }
        return true;
        
        
        
    }

}
