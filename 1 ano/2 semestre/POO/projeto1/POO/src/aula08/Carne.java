package aula08;

public class Carne extends Alimento {
    private String tipo;
    public Carne(double proteinas, double calorias, double peso,String tipo) {
        super(proteinas, calorias, peso);
        this.tipo = tipo;
    }
    String getTipo(){
        return tipo;
    }
    @Override
    public String toString(){
        return super.toString() + "Tipo: " + tipo;
    }

}
