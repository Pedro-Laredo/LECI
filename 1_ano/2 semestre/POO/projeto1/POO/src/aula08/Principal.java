package aula08;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("Dados da empresa");
        System.out.println("Nome-> ");
        String nome = sc.nextLine();
        System.out.println("Codigo postal-> ");
        String codigoPostal = sc.nextLine();
        System.out.println("email");
        String email = sc.nextLine();
        String opcao = "";
        EmpresaAluguer e1 = new EmpresaAluguer(nome, codigoPostal, email);
        while (true) {
            System.out.println("Tipo de veículo a introduzir\n Motociclo(1); AutomovelLigeiro(2); Pesado de Mercadorias(3); Pessado de passageiros;(introduza 0 para terminar)");
            opcao = sc.nextLine();
            if(opcao.equals("0")){
                break;
            }
            System.out.println("debuger");
            if(opcao.equals("1")){
                System.out.println("Matricula-> ");
                String matricula = sc.nextLine();
                System.out.println("Marca-> ");
                String marca = sc.nextLine();
                System.out.println("Modelo-> ");
                String modelo = sc.nextLine();
                System.out.println("Potencia");
                int potencia = sc.nextInt();
                sc.nextLine();
                System.out.println("Tipo(desportivo ou estrada)");
                String tipo = sc.nextLine();
                Motociclo mota = new Motociclo(matricula, marca, modelo, potencia, tipo);
                e1.updateList(mota);
            }
            if(opcao.equals("2")){
                System.out.println("Matricula-> ");
                String matricula = sc.nextLine();
                System.out.println("Marca-> ");
                String marca = sc.nextLine();
                System.out.println("Modelo-> ");
                String modelo = sc.nextLine();
                System.out.println("Potencia");
                int potencia = sc.nextInt();
                sc.nextLine();
                System.out.println("Numero do quadro-> ");
                int numeroDoQuadro = sc.nextInt();
                System.out.println("Capacidade da bagageira-> ");
                int capacidadeBagageira = sc.nextInt();
                AutomovelLigeiro carro = new AutomovelLigeiro(matricula, marca, modelo, potencia, numeroDoQuadro, capacidadeBagageira);
                e1.updateList(carro);
            }
        }


    }

}
