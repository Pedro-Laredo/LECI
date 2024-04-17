package aula06;
import aula05.DateYMD;

public class Bolseiro extends Aluno {
    private Professor professor;
    private int valor;

    public Bolseiro(String nome, int cc, DateYMD dataNasc, DateYMD dataInsc, Professor professor, int valor) {
        super(nome, cc, dataNasc, dataInsc);
        this.professor = professor;
        this.valor = valor;
    }
    public Professor getProfessor(){
        return professor;
    }
    public int getValor(){
        return valor;
    }
    public String getName(){
        return super.getName();
    }
    public int getNMec(){
        return getNmMecanografico();
    }
    void setBolsa(int valor){
        this.valor = valor;
    }

    @Override
    public String toString(){
        return super.toString() + "; Professor: " + professor.getName() + "; Valor: " + valor;
    }
    
}
