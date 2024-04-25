package aula09;

import java.util.HashMap;

public class PlaneManager {
    private HashMap<String,Plane> avioes;
    public PlaneManager() {
        avioes = new HashMap<>();
    }
    public void addPlane(Plane x){
        final String id = x.getId();
        avioes.put(id,x);
    }
    public void removePlane(Plane x){
        avioes.remove(x.getId());
    }
    public Plane searchPlane(String x){
        return avioes.get(x);
    }
    public void getCommercialPlanes() {
        for (Plane p : avioes.values()) {
            if (p instanceof CommercialPlane) {
                System.out.println(p);
                System.out.println("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
            }
        }
    }
    public void getMilitaryplanes(){
        for(Plane p : avioes.values()){
            if(p instanceof MilitaryPlane){
                System.out.println(p);
            }
        }
    }
    public void prinntAllPlanes(){
        for(Plane p: avioes.values()){
            System.out.println(p);
        }
    }
    public Plane getFastestPlane(){
        int vmax = 0;
        Plane fastPlane = null;
        for (Plane p : avioes.values()){
            if (p.getVMax()>vmax){
                vmax = p.getVMax();
                fastPlane = p;
            }
        }
        return fastPlane;
    }

}
