package aula08;

import java.util.ArrayList;

public class Prato {
    private String nome;
    private ArrayList <Alimento> ingredientes;
    public Prato(String nome){
        this.nome = nome;
        ingredientes = new ArrayList<>();
    }
    public void updateList(Alimento x){
        ingredientes.add(x);
    }
    String getNome(){
        return nome;
    }
    @Override
    public String toString(){
        return "Nome: " + nome + " Lista de ingredientes: " + ingredientes;
    }
}
