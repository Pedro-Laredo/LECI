package aula03;

import java.util.Scanner;

public class Ex6 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("introduza uma frase: ");
        String frase = sc.nextLine();
        sc.close();
        frase = frase.toLowerCase();
        System.out.print(frase+"\n");
        System.out.print(frase.substring(0,3));
        System.out.print("\n");
        char ultimoCaractere = frase.charAt(frase.length() - 1);
        System.out.println(ultimoCaractere);
    }

}
