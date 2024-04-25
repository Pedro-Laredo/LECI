package aula08;

public class Taxi extends AutomovelLigeiro {
    int nmLicensa;
    public Taxi(String matricula,String marca,String modelo,int potencia,int numeroDoQuadro, int capacidadeBagageira, int nmLicensa){
        super(matricula, marca, modelo, potencia, numeroDoQuadro, capacidadeBagageira);
        this.nmLicensa = nmLicensa;
    }
    int getNmlicensa(){
        return nmLicensa;
    }

}
