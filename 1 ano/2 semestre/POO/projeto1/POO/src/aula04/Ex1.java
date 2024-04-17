package aula04;

import java.util.Scanner;

public class Ex1 {
    

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        while (true) {
            
        
        System.out.println("\nDeseja selecionar um circulo(1), triângulo(2) ou retângulo(3), se pretender nao escolher nada digite 4? ");
        int escolha = sc.nextInt();
        if(escolha==4){
            break;
            }

        if(escolha==1){
            //criar cirulo
            circle c1 = new circle();
            double p1 = circle.perimetro(c1.raio);
            double a1 = circle.area(c1.raio);
            System.out.print("Perimetro: "+p1+ " ,Area: " + a1);
            }

        if(escolha==2){
            triangle t1 = new triangle();
            System.out.print(t1.lado1);
            double p1 = triangle.perimetro(t1.lado1, t1.lado2, t1.lado3);
            double a1 = triangle.perimetro(t1.lado1, t1.lado2, t1.lado3);
            System.out.print("Perimetro: "+p1+" ,Area: "+a1);
            }

        if(escolha==3){
            retangulo r1 = new retangulo();
            double p1 = retangulo.perimetro(r1.comprimento, r1.altura);
            double a1 = retangulo.area(r1.altura, r1.comprimento);
            System.out.print("Perimetro: "+p1+" , Area: " + a1);
            }
        }
        System.out.print("\nFim do programa");
        sc.close();
    }   

    
    
}
