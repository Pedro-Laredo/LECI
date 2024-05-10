package aula10;

import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Scanner;
import java.util.Iterator;

public class LerFicheiro {
    public static void main(String[] args) throws IOException{
        Scanner input = new Scanner(new FileReader("wordlist.txt"));
        ArrayList <String> mais2 = new ArrayList<>();
        while (input.hasNext()) {
            String word = input.next();
            if(word.length()>2){
                mais2.add(word);
            }
            if(word.endsWith("s")){
                System.out.println(word);
            }
            System.out.println(word);
        }
        System.out.println("------------------------");
        System.out.println("Palavras que tem mais que 2 caracteres");
        System.out.println(mais2);
        System.out.println("-----------------\nPalavras terminadas em S");
        Scanner input2 = new Scanner(new FileReader("wordlist.txt"));
        while(input2.hasNext()){
            String word = input2.next();
            if(word.endsWith("s")){
                System.out.println(word);
            }
        }
        Iterator <String> iterator = mais2.iterator();
        while (iterator.hasNext()) {
            String palavra = iterator.next();
            if (!palavra.matches("[a-zA-Z]+")) {
                iterator.remove();
            }
        }
        System.out.println("-----------------\n Palavras que apenas tem letras e maiores que 2");
        System.out.println(mais2);
        input.close();
        input2.close();
        }
        
    }

