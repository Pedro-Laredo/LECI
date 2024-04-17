package aula06;

import java.util.ArrayList;

public class Conjunto {
    private  ArrayList<Integer> lista = new ArrayList<>();
    
    public ArrayList<Integer> getLista() {
        return lista;
    }

    void insert(int n){
        if(!lista.contains(n)){
            lista.add(n);
            
        }
        
    }


    boolean contains(int n){
        if(!lista.contains(n)){
            return false;
        }
        else{
            return true;
        }
    }

    void remove(int n){
        if(contains(n)){
            lista.remove(Integer.valueOf(n));
        }
    }

    void empty(){
        lista.clear();
    }
    int size(){
        return lista.size();
    }
    Conjunto unir(Conjunto c){
        Conjunto conjunto_unido = new Conjunto();
        for(int i = 0; i<lista.size(); i++){
            conjunto_unido.insert(lista.get(i));
        }
        for(int x = 0; x<c.size(); x++){
            conjunto_unido.insert(c.getLista().get(x));
        }
        return conjunto_unido;
    }
    Conjunto subtrair(Conjunto c){
        Conjunto conjunto_subtraido = new Conjunto();
        for(int i=0; i<lista.size();i++){
            int num = lista.get(i);
            if (c.contains(num)){
                continue;
            }
            else{
                conjunto_subtraido.insert(num);
            }
        }
        return conjunto_subtraido;
    }
    Conjunto interset(Conjunto c){
        Conjunto conjunto_intersetado = new Conjunto();
        for(int i = 0; i<lista.size(); i++){
            int num = lista.get(i);
            if(c.contains(num)){
                conjunto_intersetado.insert(num);
            }
            
        }
        return conjunto_intersetado;
    }

    @Override
    public String toString(){
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for(int i = 0; i< lista.size(); i++){
            if(i==0){
                sb.append(lista.get(i));
            }
            else{
                sb.append("," + lista.get(i));
            }
            }
            sb.append("]");
            return sb.toString();
            
        }

    public static void main(String[] args) {
        Conjunto c1 = new Conjunto();
        c1.insert(4); c1.insert(7); c1.insert(6); c1.insert(5);
        Conjunto c2 = new Conjunto();
        int[] test = { 7, 3, 2, 5, 4, 6, 7};
        for (int el : test) c2.insert(el);
        c2.remove(3); c2.remove(5); c2.remove(6);
        System.out.println(c1);
        System.out.println(c2);
        System.out.println("Número de elementos em c1: " + c1.size());
        System.out.println("Número de elementos em c2: " + c2.size());
        System.out.println("c1 contém 6?: " + ((c1.contains(6) ? "sim" : "não")));
        System.out.println("c2 contém 6?: " + ((c2.contains(6) ? "sim" : "não")));
        System.out.println("União:" + c1.unir(c2));
        System.out.println("Interseção:" + c1.interset(c2));
        System.out.println("Diferença:" + c1.subtrair(c2));
        c1.empty();
        System.out.println("c1:" + c1);
    }
}



    

