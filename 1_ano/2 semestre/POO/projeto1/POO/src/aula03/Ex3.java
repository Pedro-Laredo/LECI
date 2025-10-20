package aula03;

import java.util.Random;
import java.util.Scanner;

public class Ex3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        while (true) {
            int number = new Random().nextInt(100);
            double aposta;
            while(true){
                System.out.print("\nIntroduza um numero-> ");
                aposta = sc.nextDouble();
                if(aposta<number){
                    System.out.print("Maior");
                }
                if (aposta>number){
                    System.out.print("Menor");
                }
                if(aposta==number){
                    System.out.print("Acertou, o número era " +number);
                    break;
                }
            }
            System.out.print("Deseja continuar? (S)im ou não-> " );
            String resposta = sc.next();
            if (!(resposta.equals("S") || resposta.equalsIgnoreCase("Sim"))){
                break;
            }
        }
        sc.close();
    }
}
