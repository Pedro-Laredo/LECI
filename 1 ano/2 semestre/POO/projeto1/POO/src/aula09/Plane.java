package aula09;

public class Plane {
    private String id;
    private String fabricante;
    private String modelo;
    private int anoProducao;
    private int numMaxPassageiros;
    private int vMax;
    public Plane(String id, String fabricante, String modelo, int anoProducao, int numMaxPassageiros, int vMax){
        this.id = id;
        this.fabricante = fabricante;
        this.modelo = modelo;
        this.anoProducao = anoProducao;
        this.numMaxPassageiros = numMaxPassageiros;
        this.vMax = vMax;
    }
    String getId(){
        return id;
    }
    String getFrabicante(){
        return fabricante;
    }
    String getModelo(){
        return modelo;
    }
    int getAnoProducao(){
        return anoProducao;
    }
    int getNumMaxPassageiros(){
        return numMaxPassageiros;
    }
    int getVMax(){
        return vMax;
    }
    String getPlaneType(){
        return "Plane";
    }
    public void setId(String id){
        this.id = id;
    }

    public void setFabricante(String fabricante){
        this.fabricante = fabricante;
    }

    public void setModelo(String modelo){
        this.modelo = modelo;
    }

    public void setAnoProducao(int anoProducao){
        this.anoProducao = anoProducao;
    }
    public void setNumMaxPassageiros(int numMaxPassageiros){
        this.numMaxPassageiros = numMaxPassageiros;
    }

    public void setVMax(int vMax){
        this.vMax = vMax;
    }
    @Override
    public String toString(){
        return "ID: " + id + "\nFabricante: " + fabricante + "\nModelo: " + modelo + "\nAno de Produção: " + anoProducao + "\nNumero maximo de passageiros: " + numMaxPassageiros + "\nVelocidade maxima: " + vMax; 
    }


}
