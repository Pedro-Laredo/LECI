package aula09;

public class PlaneTester {
    public static void main(String[] args) {
        PlaneManager manager = new PlaneManager();
        CommercialPlane c1 = new CommercialPlane("64hd", "Boing", "747", 2005, 400, 900, 5);
        CommercialPlane c2 = new CommercialPlane("yhgdw6", "Boing", "737", 2005, 400, 950, 5);
        MilitaryPlane m1 = new MilitaryPlane("ghfagyf", "US Army", "F-22", 2022, 1, 2000, 15000);
        MilitaryPlane m2 = new MilitaryPlane("64bhua7f4", "Lockhead martin", "su-27", 1999, 2, 1500, 20000);
        manager.addPlane(c1);
        manager.addPlane(c2);
        manager.addPlane(m1);
        manager.addPlane(m2);
        manager.getCommercialPlanes();
        manager.getMilitaryplanes();
        System.out.println("-----------------------------------------------------");
        System.out.println(manager.getFastestPlane());

    }

}
