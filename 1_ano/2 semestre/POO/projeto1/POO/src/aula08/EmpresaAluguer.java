package aula08;

import java.util.ArrayList;

public class EmpresaAluguer {
    private String nome;
    private String cp;
    private String email;
    private ArrayList<Veiculo> veiculos;
    public EmpresaAluguer(String nome, String cp, String email){
        this.nome = nome;
        this.cp = cp;
        this.email = email;
        veiculos = new ArrayList<>(); 
    }

    public void updateList(Veiculo x){
        veiculos.add(x);
    }
    String getNome(){
        return nome;
    }
    String getCp(){
        return cp;
    }
    String getEmail(){
        return email;
    }

}
