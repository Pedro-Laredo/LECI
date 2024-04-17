package aula04;
import java.util.Scanner;

class Car {
    public String make;
    public String model;
    public int year;
    public int kms;

    public Car(String make, String model, int year, int kms) {
        this.make = make;
        this.model = model;
        this.year = year;
        this.kms = kms;
    }

    public void drive(int distance) {
        kms +=distance;
    }
    // usado para o exercicio 4.4!!
    @Override public String toString(){
        return make + " " +model+", " +year +", kms: " +kms;
    }
}

public class SimpleCarDemo {

    static Scanner sc = new Scanner(System.in);

    static void listCars(Car[] cars) {
        System.out.println("Carros registados:");
        for (int i = 0; i < cars.length; i++) {
            System.out.printf("%s %s, %d, kms: %d\n", cars[i].make, cars[i].model, cars[i].year, cars[i].kms);
        }
    }

    public static void main(String[] args) {
        Car[] cars = new Car[3];
        cars[0] = new Car("Renault", "Megane Sport Tourer", 2015, 35356);
        cars[1] = new Car("Toyota", "Camry", 2010, 32456);
        cars[2] = new Car("Mercedes", "Vito", 2008, 273891);

        listCars(cars);

        // Adicionar 10 viagens geradas aleatoriament
        for (int i=0; i<10; i++) {
            int j = (int)Math.round(Math.random()*2); // escolhe um dos 3 carros
            int kms = (int)Math.round(Math.random()*1000); // viagem até 1000 kms
            System.out.printf("Carro %d viajou %d quilómetros.\n", j, kms);
            
            
            System.out.println("ZZZZZZZZZZZZZZZZZZZZZZZZZZ");
            cars[j].drive(kms);
            System.out.printf("Quilômetros acumulados no carro %d: %d\n", j, cars[j].kms);
        }

        listCars(cars);

        sc.close();

    }
}