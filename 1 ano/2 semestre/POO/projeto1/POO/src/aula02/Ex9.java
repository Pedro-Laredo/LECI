package aula02;

import java.util.Scanner;

public class Ex9 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Introduza um valor-> ");
        int n = sc.nextInt();
        sc.close();
        String str = "";
        while(n>=0){
            if(n%10==0){
                str += String.valueOf(n+"\n");  
                n -= 1;             
            }
            else{
                str += String.valueOf(n+" ");
                n -=1;
            }
        }
        System.out.print(str);
    }

}
