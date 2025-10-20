package aula11;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;

public class Ex1 {

    public static void main(String[] args) {
        String nomeArquivo = "primeiro.txt"; // Substitua pelo nome do seu arquivo

        try {
            Map<String, Integer> contagemPares = contarParesDePalavras(nomeArquivo);
            System.out.println("Pares de palavras encontrados e suas contagens:");
            for (Map.Entry<String, Integer> entry : contagemPares.entrySet()) {
                System.out.println(entry.getKey() + ": " + entry.getValue());
            }
        } catch (IOException e) {
            System.err.println("Erro ao ler o arquivo: " + e.getMessage());
        }
    }

    public static Map<String, Integer> contarParesDePalavras(String nomeArquivo) throws IOException {
        Map<String, Integer> contagemPares = new HashMap<>();

        try (BufferedReader br = new BufferedReader(new FileReader(nomeArquivo))) {
            String linha;
            while ((linha = br.readLine()) != null) {
                StringTokenizer tokenizer = new StringTokenizer(linha, "\t\n.,:'‘’;?!-*{}=+&/()[]”“\"\\'");
                String palavraAnterior = null;
                while (tokenizer.hasMoreTokens()) {
                    String palavra = tokenizer.nextToken().toLowerCase();
                    if (palavra.length() >= 3) {
                        if (palavraAnterior != null) {
                            String par = palavraAnterior + "=" + palavra;
                            contagemPares.put(par, contagemPares.getOrDefault(par, 0) + 1);
                        }
                        palavraAnterior = palavra;
                    } else {
                        palavraAnterior = null;
                    }
                }
            }
        }

        return contagemPares;
    }
}
