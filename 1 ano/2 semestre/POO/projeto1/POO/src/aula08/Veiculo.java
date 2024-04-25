package aula08;

public abstract class Veiculo implements KmPercorridosInterface{
    private String matricula;
    private String marca;
    private String modelo;
    private int potencia;
    private int kmPercorridos;
    private int ultimoKmPercorrido;
    public Veiculo(String matricula,String marca,String modelo,int potencia){
        this.matricula = matricula;
        this.marca = marca;
        this.modelo = modelo;
        this.potencia = potencia;
    }
    String getMatricula(){
        return matricula;
    }
    String getMarca(){
        return marca;
    }
    String modelo(){
        return modelo;
    }
    int potencia(){
        return potencia;
    }
    @Override
    public void trajeto(int quilometros){
        this.ultimoKmPercorrido = quilometros;
        kmPercorridos +=quilometros;
        }
    @Override
    public int distanciaTotal(){
        return kmPercorridos;
    }
    @Override
    public int ultimoTrajeto(){
        return ultimoKmPercorrido;
    }

}
