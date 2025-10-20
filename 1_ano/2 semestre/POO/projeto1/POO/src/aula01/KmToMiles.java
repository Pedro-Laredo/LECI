package aula01;
import java.util.Scanner;

public class KmToMiles {
	public static void main(String[] args) {
		float km = 0 ;
		float miles = 0;
		Scanner sc = new Scanner(System.in);
		System.out.print("Insira distância em km: ");
		km = sc.nextFloat();
		miles = km / 1.609f;
		System.out.println("A distância em milhas é " + miles);
		int [] a = {1,2,3,4,5,6};
		System.out.println(a[3]);
		sc.close();
	}
}
