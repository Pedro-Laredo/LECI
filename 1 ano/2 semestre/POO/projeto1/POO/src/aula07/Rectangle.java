package aula07;

public class Rectangle extends Forma {
    private double compirmeto;
    private double altura;
    private String cor;

    public Rectangle(double comprimeto,double altura,String cor){
        this.compirmeto = comprimeto;
        this.altura = altura;
        this.cor = cor;
    }
    public String getCor(){
        return cor;
    }

    public double getComprimento(){
        return compirmeto;
    }
    public double getAltura(){
        return altura;
    }

    public double area(){
        return compirmeto*altura;
    }
    public double perimetro(){
        return compirmeto+altura;
    }


}
