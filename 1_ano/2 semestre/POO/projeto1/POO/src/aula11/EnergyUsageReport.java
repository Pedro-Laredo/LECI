package aula11;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class EnergyUsageReport {
    private List<Customer> customers;

    public EnergyUsageReport() {
        this.customers = new ArrayList<>();
    }

    public void load(String fileName) throws FileNotFoundException {
        Scanner ler = new Scanner(new FileReader(fileName));
        while (ler.hasNextLine()) {
            String line = ler.nextLine();
            String[] parts = line.split("\\|");
            int idCliente = Integer.parseInt(parts[0]);
            List<Double> consumosCliente = new ArrayList<>();
            for (int i = 1; i < parts.length; i++) {
                consumosCliente.add(Double.parseDouble(parts[i]));
            }
            Customer cliente = new Customer(idCliente, consumosCliente);
            customers.add(cliente);
        }
        ler.close();
    }

    public void addCustomer(Customer cliente) {
        customers.add(cliente);
    }

    public void removeCustomer(int id) {
        customers.removeIf(customer -> customer.getCustomerId() == id);
    }

    public Customer getCustomer(int id) {
        for (Customer cliente : customers) {
            if (cliente.getCustomerId() == id) {
                return cliente;
            }
        }
        return null;
    }

    public double calculateTotalUsage(int id){
        Customer cliente = getCustomer(id);
        if(cliente !=null){
            double total = 0.0;
            for(double leitura : cliente.getMeterReadings()){
                total += leitura;
            }
            return total;
        } else{
            return 0.0;
        }
    }

    public void generateReport(String fileName) throws IOException{
        FileWriter fileWriter = new FileWriter(fileName);
        for (Customer customer : customers){
            int id = customer.getCustomerId();
            double energia = calculateTotalUsage(id);
            fileWriter.write(id +" " + energia +"\n");
        }
        fileWriter.close();

    }

}
