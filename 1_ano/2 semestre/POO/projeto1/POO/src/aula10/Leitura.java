package aula10;

import java.util.ArrayList;
import java.util.HashMap;

public class Leitura {
    public static void main(String[] args) {
        String frase = "Hello World";
        HashMap<Character, ArrayList<Integer>> mapa = new HashMap<>();

        for (int i = 0; i < frase.length(); i++) {
            char caracter = frase.charAt(i);
            if (!mapa.containsKey(caracter)) {
                mapa.put(caracter, new ArrayList<>());
            }
            mapa.get(caracter).add(i);
        }
        System.out.println("Resultado:");
        for (char key : mapa.keySet()) {
            System.out.println(key + "=" + mapa.get(key));
        }
    }

}
