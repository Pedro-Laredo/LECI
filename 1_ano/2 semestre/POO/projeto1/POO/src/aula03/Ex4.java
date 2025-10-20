package aula03;

import java.util.Scanner;

public class Ex4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Digite o número de alunos da turma: ");
        int alunos = sc.nextInt();
        double[][] notas = new double[alunos][3];
        for(int i = 0; i<alunos;i++){
            System.out.println("Digite as notas do aluno " + (i + 1) + ":");
            System.out.print("Nota teórica: ");
            notas[i][0] = sc.nextDouble();
            System.out.print("Nota prática: ");
            notas[i][1] = sc.nextDouble();
            notas[i][2] = 0;
            if(notas[i][0]<7.0 || notas[i][1]<7.0){
                notas[i][2] = 66;
            }
            else{
                notas[i][2] = funcao1(notas[i][0], notas[i][1]);
            }
        }
        System.out.print("NotaT " +" NotaP "+ "Pauta");
        for(int x = 0; x<alunos;x++){
            System.out.print("\n"+ notas[x][0] + "  " + notas[x][1] + "  " + notas[x][2]);
        }
        sc.close();
    }

    public static int funcao1(double notaT , double notaP){
        double notaFinal = 0.4*notaT+0.6*notaP;
        int notaArredondada = (int) Math.round(notaFinal);
        return notaArredondada;
    }
}

