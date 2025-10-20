package aula12;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Comparator;
import java.util.Scanner;
import java.util.Set;
import java.util.TreeSet;

public class MovieManager {
    private Set<Filme> filmes;

    public MovieManager() {
        this.filmes = new TreeSet<>(Comparator.comparing((Filme filme) -> filme.getNome().toLowerCase()));
    }

    void loadFilmes(String fileName) throws FileNotFoundException {
        Scanner reader = new Scanner(new FileReader(fileName));
        reader.nextLine();
        while (reader.hasNextLine()) {
            String line = reader.nextLine();
            String[] partes = line.split("\\t");
            if (partes.length >= 5) {
                String nome = partes[0];
                double score = Double.parseDouble(partes[1]);
                String rating = partes[2];
                String genre = partes[3];
                int runningTime = Integer.parseInt(partes[4]);
                Filme filme = new Filme(nome, score, rating, genre, runningTime);
                filmes.add(filme);
            }
        }
        reader.close();
    }

    void printFilmes() {
        for (Filme filme : filmes) {
            System.out.println(filme);
        }
    }

    public static void main(String[] args) {
        MovieManager manager = new MovieManager();
        try {
            manager.loadFilmes("seu_arquivo.txt");
            manager.printFilmes();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }
}

class Filme {
    private String nome;
    private double score;
    private String rating;
    private String genre;
    private int runningTime;

    public Filme(String nome, double score, String rating, String genre, int runningTime) {
        this.nome = nome;
        this.score = score;
        this.rating = rating;
        this.genre = genre;
        this.runningTime = runningTime;
    }

    public String getNome() {
        return nome;
    }

    @Override
    public String toString() {
        return "Filme{" +
                "nome='" + nome + '\'' +
                ", score=" + score +
                ", rating='" + rating + '\'' +
                ", genre='" + genre + '\'' +
                ", runningTime=" + runningTime +
                '}';
    }
}
