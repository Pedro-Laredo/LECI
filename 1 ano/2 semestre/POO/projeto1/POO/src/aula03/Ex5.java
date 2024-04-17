package aula03;
import java.util.Scanner;
public class Ex5 {
    public static void main(String[] args) {
        int mes = 0, ano = 0;
        Scanner sc = new Scanner(System.in);
        String data = "";
        String[] diasSemana = {"Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"};
        int dias = 0;

        while (true) {
            System.out.print("Introduza uma data no formato mm/yyyy: ");
            data = sc.next();
            if (data.matches("\\d{2}/\\d{4}")) {
                String[] partes = data.split("/");
                mes = Integer.parseInt(partes[0]);
                ano = Integer.parseInt(partes[1]);
                break;
            } else {
                System.out.println("Os dados introduzidos não são válidos.");
            }
        }
        if (mes == 1 || mes == 3 || mes == 5 || mes == 7 || mes == 8 || mes == 10 || mes == 12) {
            dias = 31;
        } else if (mes == 2) {
            if ((ano % 4 == 0 && ano % 100 != 0) || (ano % 400 == 0)) {
                dias = 29;
            } else {
                dias = 28;
            }
        } else {
            dias = 30;
        }
        System.out.print("Em que dia da semana começa o mês? (1 = Segunda, 2 = Terça, ..., 7 = Domingo): ");
        int comeca = sc.nextInt();
        System.out.println("  " + data);
        for (String diaSemana : diasSemana) {
            System.out.print(diaSemana + " ");
        }
        System.out.println();
        int diaAtual = 1;
        int espacosVazios = (comeca - 1) * 3;
        for (int i = 0; i < espacosVazios; i++) {
            System.out.print(" ");
        }
        for (int i = comeca; i <= 7; i++) {
            System.out.printf("%2d ", diaAtual);
            diaAtual++;
        }
        System.out.println();
        for (int i = diaAtual; i <= dias; i++) {
            System.out.printf("%2d ", i);
            if ((i + comeca - 1) % 7 == 0) {
                System.out.println();
            }
        }
        sc.close();
    }
}
