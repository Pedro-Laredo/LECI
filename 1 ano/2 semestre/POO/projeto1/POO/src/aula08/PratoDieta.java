package aula08;



public class PratoDieta extends Prato {
    private int limiteCalorias;
    public PratoDieta(String nome, int limiteCalorias){
        super(nome);
        this.limiteCalorias = limiteCalorias;
    }
    int getMaxCalorias(){
        return limiteCalorias;
    }
    @Override
    public String toString(){
        return super.toString() + " Limite maximo de calorias: " + limiteCalorias;
    }
}
