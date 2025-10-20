package aula12;
class Movie {
    private String nome;
    private double score;
    private String rating;
    private String genre;
    private int runningTime;

    public Movie(String nome, double score, String rating, String genre, int runningTime) {
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
        return "Movie{" +
                "nome='" + nome + '\'' +
                ", score=" + score +
                ", rating='" + rating + '\'' +
                ", genre='" + genre + '\'' +
                ", runningTime=" + runningTime +
                '}';
    }
}