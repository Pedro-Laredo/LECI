package aula08;

public class PMercadorias extends Veiculo {
    int numeroDoQuadro;
    int peso;
    int cargamax;
    public PMercadorias(String matricula,String marca,String modelo,int potencia, int numeroDoQuadro,int peso, int cargamax){
        super(matricula, marca, modelo, potencia);
        this.numeroDoQuadro = numeroDoQuadro;
        this.peso = peso;
        this.cargamax = cargamax;
    }
    int getNumQuadro(){
        return numeroDoQuadro;
    }
    int getPeso(){
        return peso;
    }
    int getCargaMax(){
        return cargamax;
    }

}
