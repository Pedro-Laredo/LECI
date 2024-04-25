package aula08;

public class PPassageiros extends Veiculo {
    int numeroDoQuadro;
    int peso;
    int numMaxPassageiros;
    public PPassageiros(String matricula,String marca,String modelo,int potencia, int numeroDoQuadro, int peso, int numMaxPassageiros){
        super(matricula, marca, modelo, potencia);
        this.numeroDoQuadro = numeroDoQuadro;
        this.peso=peso;
        this.numMaxPassageiros = numMaxPassageiros;
    }
    int getNumeroDoQuadro(){
        return numeroDoQuadro;
    }
    int getPeso(){
        return peso; 
    }
    int getNumMaxPassageiros(){
        return numMaxPassageiros;
    }

}
