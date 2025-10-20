package aula09;

public class CommercialPlane extends Plane {
    private int tripulantes;
    public CommercialPlane(String id, String fabricante, String modelo, int anoProducao, int numMaxPassageiros, int vMax, int tripulantes){
        super(id, fabricante, modelo, anoProducao, numMaxPassageiros, vMax);
        this.tripulantes = tripulantes;
    }
    int getTripulantes(){
        return tripulantes;
    }
    public void setTripulantes(int tripulantes){
        this.tripulantes = tripulantes;
    }
    @Override
    public String toString(){
        return super.toString() + "\nTripulantes: " + tripulantes;
    }
    @Override
    public String getPlaneType(){
        return "Comercial";
    }

}
