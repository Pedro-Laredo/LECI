package aula07;

import java.util.ArrayList;

public class Menu {
    public static void main(String[] args) {
        ArrayList<Forma> armazenamento = new ArrayList<>();
        Forma t1 = new Triangle(2, 3, 4, "Azul");
        Double area = t1.area();
        armazenamento.add(t1);
        System.out.print(t1);
        
    }

}
