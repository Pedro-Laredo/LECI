package aula06;

import java.util.ArrayList;
import java.util.Scanner;


public class GerenciadorContactos {
    private static ArrayList<String[]> listaContactos = new ArrayList<>();
    private static ArrayList<String[]> contatosEncontrados = new ArrayList<>();
    private static Scanner sc = new Scanner(System.in);

    public static void adicionarContacto(String pessoa, String email, String telefone,int id) {
        String[] contato = {pessoa, email, telefone, String.valueOf(id) };
        listaContactos.add(contato);
    }
    public static void alterarContactos(){
        procurarContacto();
        if(!contatosEncontrados.isEmpty()){
            System.out.println("Por favor introduza o ID do contacto que deseja remover: ");
            String id_input = sc.nextLine();
            for(String[] contato : contatosEncontrados){
                if(contato[3].equals(id_input)){
                    System.out.println("Introduza o nome do contacto");
                    String nome = sc.nextLine();
                    System.out.println("Endereço de mail(inserir um 0 se não pretender adicionar): ");
                    String email = sc.nextLine();
                    System.out.print("Número de telemóvel(inserir um 0 se nao pretender adicionar):  ");
                    String telefone = sc.nextLine();
                    Contactos contacto_temp = new Contactos(new Pessoa(nome, 000000, null), telefone, email);
                    if(!contacto_temp.validadorEmail(email)){
                        System.out.println("Email introduzido invalido ");
                    }
                    if(!contacto_temp.validadorNum(telefone)){
                        System.out.println("Telefone introduzido invalido ");
                    }
                    else{
                        contato[0] = nome;
                        contato[1] = email;
                        contato[2] = telefone;
                        contato[3] = contato[3];
                    }
                    
                    }
                    
                }
            }
        }

    public static void removerContacto(){
        procurarContacto();
        if (!contatosEncontrados.isEmpty()) {
            System.out.println("Por favor, introduza o ID do contacto que deseja remover:");
            String id_input = sc.nextLine();
            boolean encontradoID = false;
    
            for (String[] contato : contatosEncontrados) {
                if (contato[3].equals(id_input)) {
                    listaContactos.remove(contato);
                    System.out.println("Contacto removido com sucesso.");
                    encontradoID = true;
                    break;
                }
            }
    
            if (!encontradoID) {
                System.out.println("ID não encontrado.");
            }
        }
    }



    public static void procurarContacto() {
        System.out.println("Introduza o nome: ");
        String nome_input = sc.nextLine();
        for (String[] contato : listaContactos) {
            if (contato[0].equalsIgnoreCase(nome_input)) {
                contatosEncontrados.add(contato);
            }
        }
    
        if (contatosEncontrados.isEmpty()) {
            System.out.println("Nenhum contacto encontrado para o nome fornecido.");
        } else if (contatosEncontrados.size() == 1) {
            String[] contato = contatosEncontrados.get(0);
            System.out.println("Contacto encontrado:");
            System.out.println("Nome: " + contato[0]);
            System.out.println("Email: " + contato[1]);
            System.out.println("Telefone: " + contato[2]);
            System.out.println("ID: " + contato[3]);
        } else {
            System.out.println("Múltiplos contactos encontrados com o mesmo nome. Especifique o ID do contacto desejado:");
            for (String[] contato : contatosEncontrados) {
                System.out.println("ID: " + contato[3]);
                System.out.println("Nome: " + contato[0]);
                System.out.println("Email: " + contato[1]);
                System.out.println("Telefone: " + contato[2]);
                System.out.println("------------------------------");
            }
            System.out.println("Por favor, introduza o ID do contacto que deseja visualizar:");
            String id_input = sc.nextLine();
            boolean encontradoID = false;
            for (String[] contato : contatosEncontrados) {
                if (contato[3].equals(id_input)) {
                    encontradoID = true;
                    System.out.println("Contacto encontrado:");
                    System.out.println("Nome: " + contato[0]);
                    System.out.println("Email: " + contato[1]);
                    System.out.println("Telefone: " + contato[2]);
                    System.out.println("ID: " + contato[3]);
                    break;
                }
            }
            if (!encontradoID) {
                System.out.println("ID não encontrado.");
            }
        }
    }
    

    public static void inserirContactos(){
        String telefone = "Não registado:";
        String email = "Não registado";
        int cc = 00000000;
        System.out.println("--------------------------------------------------------------------------");
        System.out.println("Nome e apelido : ");
        String nome = sc.nextLine();
        System.out.print("Número de telemóvel(inserir um 0 se nao pretender adicionar):  ");
        String telefone_input = sc.nextLine();
        if(telefone_input.equals("0")) {
            
        } else {
            telefone = telefone_input;
        }
        System.out.println("Endereço de mail(inserir um 0 se não pretender adicionar): ");
        String email_input = sc.nextLine();
        if(email_input.equals("0")) {
            
        } else {
            email = email_input;
        }
        Contactos contacto = new Contactos(new Pessoa(nome, cc, null), telefone_input, email_input);
        if(telefone.equals("Não registado:")) {
            
        } else {
            while(!contacto.validadorNum(telefone)) {
                System.out.println("Número inválido: ");
                telefone = sc.nextLine();
            }
        }
    
        if(email.equals("Não registado:")) {
            
        } else {
            while(!contacto.validadorEmail(email)) {
                System.out.println("Email inválido: ");
                email = sc.nextLine();
            }
        }
        adicionarContacto(contacto.getPessoa().getName(), email, telefone, contacto.getId());
    }
    public static void listarContactos(){
        for (String[] contato : listaContactos) {
            System.out.println("Nome: " + contato[0]);
            System.out.println("Email: " + contato[1]);
            System.out.println("Telefone: " + contato[2]);
            System.out.println("O id é: " + contato[3]);
            System.out.println("//////////////////\n");
        }
    }
    public static void main(String[] args) {
        while (true) {
            System.out.println(" 1. Inserir contacto\n 2. Alterar Contacto\n 3.Apagar Contacto\n 4. Procurar contacto\n 5. Listar contactos\n 0. Sair ");
            String x = sc.nextLine();
            if(x.equals("0")){
                break;
            } else if(x.equals("1")){
                inserirContactos();
            } else if(x.equals("2")){
                alterarContactos();
            } else if(x.equals("3")){
                removerContacto();
            } else if(x.equals("4")){
                procurarContacto();
            } else if(x.equals("5")){
                listarContactos();
            } else {
                System.out.println("Opção inválida");
            }
            
            }
            
        }
    
    
    
    
}



