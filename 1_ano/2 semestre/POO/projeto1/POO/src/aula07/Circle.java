package aula07;

public class Circle extends Forma {
    private double raio;
    private String cor;
    public Circle(int raio,String cor){
        this.raio = raio;
        this.cor = cor;
    }

    public double getRaio(){
        return raio;
    }
    public String getCor(){
        return cor;
    }

    public double area(){
        return raio*raio*Math.PI;
    }
    public double perimetro(){
        return 2*raio*Math.PI;
    }

}
