package aula03;

import java.util.Scanner;

public class Ex7 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("introduza uma frase: ");
        String frase = sc.nextLine();
        sc.close();
        int a = contarDigitos(frase);
        System.out.print("Numero de digitos: "+a);
        int espacos = contarEspacos(frase);
        System.out.print("\n Numero de espaços: "+espacos);
        String frase_2 = minusculas(frase);
        if(frase_2 == frase){
            System.out.print("\nA frase apenas tem minúsculas");
        }
        else{
            System.out.print("\nA frase nao tem apenas minusuclas");
        }
        String resultado = palindromo(frase);
        System.out.print(resultado);
    }

    public static int contarDigitos(String frase){
        int contador = 0;
        int comprimento = frase.length();
        for(int i=0;i<comprimento;i++){
            if(frase.charAt(i)>='0' && frase.charAt(i)<='9'){
                contador++;
            }
            else{
                continue;
            }
        }
        return contador;
    }

    public static String minusculas(String frase){
        String frase_2 = frase.toLowerCase();
        return frase_2;
    }
    
    public static int contarEspacos(String frase){
        int contador = 0;
        int comprimento = frase.length();
        for(int i=0;i<comprimento;i++){
            if(frase.charAt(i)==' '){
                contador++;}
        }
        return contador;
    }

    public static String palindromo(String frase) {
        int comprimento = frase.length();
        String frase_2 = minusculas(frase);
        StringBuilder frase_invertida = new StringBuilder();
        for (int i = comprimento - 1; i >= 0; i--) {
            frase_invertida.append(frase_2.charAt(i));
        }
        if (frase_invertida.toString().equals(frase_2)) {
            return "\nA palavra é um palíndromo";
        } else {
            return "\nA palavra não é um palíndromo";
        }
    }

}



