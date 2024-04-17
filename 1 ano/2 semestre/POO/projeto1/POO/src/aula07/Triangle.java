package aula07;

public class Triangle extends Forma {
    private double lado1;
    private double lado2;
    private double lado3;
    private String cor;
    public Triangle(double lado1,double lado2,double lado3,String cor){
        this.lado1 = lado1;
        this.lado2 = lado2;
        this.lado3= lado3;
    }
    public String getCor(){
        return cor;
    }
    public double area(){
        double p = (lado1+lado2+lado3)/2;
        return (java.lang.Math.sqrt(p*(p-lado1)*(p-lado2)*(p-lado3)));
    }
    public double perimetro(){
        return lado1+lado2+lado3;
    }

}
