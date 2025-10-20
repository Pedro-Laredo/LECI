package aula03;

import java.util.Scanner;

public class Ex2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double valor = 0;
        double juro = 0;
        while (true) {
            System.out.print("\nintroduza o montante investido(multiplo de 1000 ");
            valor = sc.nextDouble();
            if(valor%1000!=0){
                System.out.print("O valor introduzido nao e multiplo de 1000");
                continue;
            }
            System.out.print("\nIntroduza o valor do juro (0-5%) ");
            juro = sc.nextDouble();
            if(juro<=0){
                System.out.print("O juro tem de variar entre 0 e 5 %");
                continue;
            }
            if(juro>5){
                System.out.print("O juro tem de variar entre 0 e 5 %");
                continue;
            }
            else{
                break;
            }
            
        }
        sc.close();
        juro = juro*0.01;
        double i = 1;
        for(;i<=12;){
            double retorno = valor*Math.pow((1+juro),i);
            System.out.println("Mês " +i+" Valor total: " + retorno);
            i++;
        }
    }

}
