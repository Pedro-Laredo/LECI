package aula12;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;


public class Ex1 {
    public void readerFunc(){
        int contador = 0;
        Set<String> conjunto = new HashSet<>();
    try (Scanner reader = new Scanner(new FileReader("major.txt"))) {
        while (reader.hasNextLine()) {
            String line = reader.nextLine();
            String parts [] = line.split(" ");
            for(String palavra : parts){
                contador +=1;
                conjunto.add(palavra);
            }
        }
        System.out.println("Numero total de palavras: " + contador);
        System.out.println("numero de diferentes palavras: " + conjunto.size());

    
    reader.close();
    } catch (FileNotFoundException e) {
        e.printStackTrace();
    }
    }
    
    public static void main(String[] args) {
        Ex1 ex1 = new Ex1(); // Criando uma instância de Ex1
        ex1.readerFunc(); // Chamando o método readerFunc a partir da instância
    }
}
