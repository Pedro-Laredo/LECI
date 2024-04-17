package aula03;

import java.util.Scanner;

public class Ex8 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduza uma frase: ");
        String frase = sc.nextLine();
        sc.close();
        String data[] = frase.split(" ");
        StringBuilder acronym = new StringBuilder();
        for(String word : data){
            if(word.length()>3 && Character.isUpperCase(word.charAt(0))){
                acronym.append(word.charAt(0));}
            }
        System.out.print("\nO acrónimo é " +acronym);
        }

        
    }



