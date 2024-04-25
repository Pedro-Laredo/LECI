package aula08;

public class AutomovelLigeiro extends Veiculo {
    int numeroDoQuadro;
    int capacidadeBagageira;

    public AutomovelLigeiro(String matricula,String marca,String modelo,int potencia,int numeroDoQuadro, int capacidadeBagageira){
        super(matricula, marca, modelo, potencia);
        this.numeroDoQuadro = numeroDoQuadro;
        this.capacidadeBagageira = capacidadeBagageira;
    }
    int getNumQuadro(){
        return numeroDoQuadro;
    }
    int capacidadeBagageira(){
        return capacidadeBagageira;
    }

}
