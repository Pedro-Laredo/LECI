package aula08;

public class Peixe extends Alimento {
    String tipo;
    public Peixe(double proteinas, double calorias, double peso,String tipo) {
        super(proteinas, calorias, peso);
        this.tipo = tipo;
    }
    String getTipo(){
        return tipo;
    }
    @Override
    public String toString(){
        return super.toString() + " Tipo: " + tipo;
    }
}


