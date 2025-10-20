package aula12;

import java.io.FileNotFoundException;

public class MovieExecuter {
    public static void main(String[] args) {
        MovieManager manager = new MovieManager();
        try {
            manager.loadFilmes("movies.txt");
            manager.printFilmes();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }
}

