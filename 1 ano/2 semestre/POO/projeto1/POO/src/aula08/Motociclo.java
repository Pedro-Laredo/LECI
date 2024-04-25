package aula08;

public class Motociclo extends Veiculo {
    String tipo;
    public Motociclo(String matricula,String marca,String modelo,int potencia,String tipo){
        super(matricula, marca, modelo, potencia);
        this.tipo = tipo;
    }
    String getTipo(){
        return tipo;
    }

}
