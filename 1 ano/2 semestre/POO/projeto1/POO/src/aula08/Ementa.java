package aula08;

import java.util.ArrayList;

public class Ementa {
    private String nome;
    private String local;
    private ArrayList<Prato> pratos;
    public Ementa(String nome, String local){
        this.nome = nome;
        this.local = local;
        pratos = new ArrayList<>();
    }
    public void updatePratos(Prato x){
        pratos.add(x);
    }
    String getNome(){
        return nome;
    }
    String getLocal(){
        return local;
    }
    @Override

    public String toString(){
        return "Nome: " + nome + " Local: " + local + pratos;
    }

}
