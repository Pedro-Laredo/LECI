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
        this.kms +=distance;
    }
    // usado para o exercicio 4.4!!
    @Override public String toString(){
        return make + " " +model+", " +year +", kms: " +kms;
    }

}

public class CarDemo {

    static Scanner sc = new Scanner(System.in);
    String linha;

    static int registerCars(Car[] cars) {
        String marca;
        String modelo;
        int ano;
        int kilometros;
        int i = 0;
        while(true){
            System.out.print("Insira dados do carro (marca modelo ano quilómetros): ");
            String linha = sc.nextLine();
            if(linha.equals("")){
                break;
            }
            else{
                String dados[] = linha.split(" ");
                for(int p =0; p<dados.length; p++){

                    if(dados.length>4){

                        marca = dados[0];
                        modelo = dados[1] + " " + dados[2];
                        ano = Integer.parseInt(dados[3]); 
                        kilometros = Integer.parseInt(dados[4]); 
                    }
                    else{
                        marca = dados[0];
                        modelo = dados[1];
                        ano = Integer.parseInt(dados[2]); 
                        kilometros = Integer.parseInt(dados[3]);
                    }
                    cars[i] = new Car(marca,modelo,ano,kilometros);
                }
            }
            i++;
        }
        return i;
        
   }

   static void registerTrips(Car[] cars, int numCars) {
    Scanner scanner = new Scanner(System.in);
    while (true) {
        System.out.print("Registe uma viagem no formato \"carro:distância\" (ou linha vazia para sair): ");
        String line = scanner.nextLine();
        if (line.isEmpty()) {
            break;
        }
        String[] parts = line.split(":");
        if (parts.length != 2) {
            System.out.println("Formato inválido. Tente novamente.");
            continue;
        }
        String carName = parts[0].trim();
        int distance = 0;
        try {
            distance = Integer.parseInt(parts[1].trim());
        } catch (NumberFormatException e) {
            System.out.println("Distância inválida. Tente novamente.");
            continue;
        }
        boolean found = false;
        for (Car car : cars) {
            if (car != null && (car.make + " " + car.model).equalsIgnoreCase(carName)) {
                car.drive(distance);
                found = true;
                break;
            }
        }
        if (!found) {
            System.out.println("Carro não encontrado. Tente novamente.");
        }
    }
    scanner.close();
}


    static void listCars(Car[] cars) {
        System.out.println("\nCarros registados: ");
        for(int x = 0; x<cars.length;x++){
            System.out.println(cars[x]);
        }

        
        System.out.println("\n");
    }

    public static void main(String[] args) {
        Car[] cars = new Car[10];

        int numCars = registerCars(cars);

        if (numCars>0) {
            listCars(cars);
            registerTrips(cars, numCars);
            listCars(cars);
        }

        sc.close();

    }
}