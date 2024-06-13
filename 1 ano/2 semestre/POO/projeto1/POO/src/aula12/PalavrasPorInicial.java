package aula12;
import java.io.*;
import java.util.*;

public class PalavrasPorInicial {
    public static void main(String[] args) {
        String nomeArquivo = "primeiro.txt"; // Substitua com o nome do seu arquivo

        // Criar uma estrutura para armazenar as palavras agrupadas por inicial
        Map<Character, Map<String, Integer>> palavrasPorInicial = new TreeMap<>();

        try (BufferedReader reader = new BufferedReader(new FileReader(nomeArquivo))) {
            String linha;
            while ((linha = reader.readLine()) != null) {
                String[] palavras = linha.split("\\s+"); // Dividir a linha em palavras
                for (String palavra : palavras) {
                    palavra = palavra.toLowerCase(); // Converter para minúsculas
                    palavra = palavra.replaceAll("[^a-z]", ""); // Remover caracteres não alfabéticos
                    if (palavra.length() >= 3) { // Considerar apenas palavras com 3 caracteres ou mais
                        char inicial = palavra.charAt(0);
                        // Inicializar a estrutura para a inicial, se ainda não estiver presente
                        palavrasPorInicial.putIfAbsent(inicial, new TreeMap<>());
                        // Atualizar a contagem para a palavra na inicial correspondente
                        palavrasPorInicial.get(inicial).merge(palavra, 1, Integer::sum);
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            System.exit(1);
        }

        // Escrever a estrutura em um arquivo, ordenando as palavras alfabeticamente
        try (PrintWriter writer = new PrintWriter(new FileWriter("saida.txt"))) {
            for (Map.Entry<Character, Map<String, Integer>> entry : palavrasPorInicial.entrySet()) {
                writer.println(entry.getKey() + ":");
                for (Map.Entry<String, Integer> palavraEntry : entry.getValue().entrySet()) {
                    writer.println("\t" + palavraEntry.getKey() + ", " + palavraEntry.getValue() + ";");
                }
            }
            System.out.println("Estrutura de dados foi escrita em 'saida.txt'.");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
