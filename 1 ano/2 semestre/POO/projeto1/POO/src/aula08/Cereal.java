package aula08;

public class Cereal extends Alimento {
    private String nome;
    public Cereal(double proteinas, double calorias, double peso,String nome) {
        super(proteinas, calorias, peso);
        this.nome = nome;
    }
    String getNome(){
        return nome;
    }
    @Override
    public String toString(){
        return super.toString() + "Nome: " + nome;
    }

}
