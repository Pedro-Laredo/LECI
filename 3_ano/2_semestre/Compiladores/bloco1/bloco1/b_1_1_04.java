import java.io.File;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class b_1_1_04 {
    public static void main(String[] args) {
        Map<String, String> dictionary = new HashMap<>();
        
        // Ler o ficheiro 
        try {
            Scanner fileScanner = new Scanner(new File("numbers.txt"));
            while (fileScanner.hasNextLine()) {
                String line = fileScanner.nextLine();
                // O formato do ficheiro é: "numero - palavra"
                String[] parts = line.split(" - ");
                if (parts.length == 2) {
                    String number = parts[0].trim();
                    String word = parts[1].trim().toLowerCase();
                    dictionary.put(word, number);
                }
            }
            fileScanner.close();
        } catch (FileNotFoundException e) {
            System.err.println("Erro: Ficheiro 'numbers.txt' não encontrado.");
            System.exit(1);
        }

        // 2. Ler do terminal
        Scanner inputScanner = new Scanner(System.in);
        // Expressão regular para encontrar palavras (letras apenas)
        Pattern wordPattern = Pattern.compile("[a-zA-Z]+");

        while (inputScanner.hasNextLine()) {
            String line = inputScanner.nextLine();
            
            // Substituir hifens por espaços 
            line = line.replace("-", " ");
            
            Matcher matcher = wordPattern.matcher(line);
            StringBuffer sb = new StringBuffer();
            
            //encontrar
            while (matcher.find()) {
                String word = matcher.group();
                String lowerWord = word.toLowerCase();
                
                if (dictionary.containsKey(lowerWord)) {
                    // substituir pela representação
                    matcher.appendReplacement(sb, dictionary.get(lowerWord));
                } else {
                    // manter a palavra original
                    matcher.appendReplacement(sb, word);
                }
            }
            // Adicionar o resto da string que não fez match
            matcher.appendTail(sb);
            
            // Imprimir a linha traduzida
            System.out.println(sb.toString());
        }
        inputScanner.close();
    }
}