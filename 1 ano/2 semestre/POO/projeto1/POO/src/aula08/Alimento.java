package aula08;

public abstract class Alimento {
    private double proteinas;
    private double calorias;
    private double peso;
    public Alimento(double proteinas, double calorias, double peso){
        this.proteinas = proteinas;
        this.calorias= calorias;
        this.peso = peso;
    }
    double getProteina(){
        return proteinas;
    }
    double getCalorias(){
        return calorias;
    }
    double getPeso(){
        return peso;
    }
    @Override
    public String toString(){
        return "Proteinas: " + proteinas + " Calorias: " + calorias + " Peso: " + peso;
    }
}
