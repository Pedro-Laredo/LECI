package aula09;

public class MilitaryPlane extends Plane {
    private int numAmmo;
    public MilitaryPlane(String id, String fabricante, String modelo, int anoProducao, int numMaxPassageiros, int vMax, int numAmmo){
        super(id, fabricante, modelo, anoProducao, numMaxPassageiros, vMax);
        this.numAmmo = numAmmo;
    }
    int getNummAmmo(){
        return numAmmo;
    }
    public void setNumAmmo(int numAmmo){
        this.numAmmo = numAmmo;
    }
    @Override
    public String toString(){
        return super.toString() + "\nNumero de munições: " + numAmmo;
    }
}
