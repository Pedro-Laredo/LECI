package aula09;
import aula06.*;
import aula05.*;

import java.util.*;
public class ALDemo {
    public static void main(String[] args) {
    ArrayList<Integer> c1 = new ArrayList<>();
    for (int i = 10; i <= 100; i+=10)
        c1.add(i);
    System.out.println("Size: " + c1.size());

    for (int i = 0; i < c1.size(); i++)
        System.out.println("Elemento: " + c1.get(i));
    ArrayList<String> c2 = new ArrayList<>();

    c2.add("Vento");
    c2.add("Calor");
    c2.add("Frio");
    c2.add("Chuva");
    System.out.println(c2);
    Collections.sort(c2);
    System.out.println(c2);
    c2.remove("Frio");
    c2.remove(0);
    System.out.println(c2);
    Set<Pessoa> c3 = new HashSet<>();
    Pessoa pessoa = new Pessoa("Pedro", 12343432, new DateYMD(23, 5, 2005));
    c3.add(pessoa);
    Pessoa pessoa2 = new Pessoa("Barbara", 4546646, new DateYMD(27, 12, 2005));
    c3.add(pessoa2);
    for(Pessoa p : c3) {
        System.out.println(p);
    }
    Iterator<Pessoa> iterator = c3.iterator();
    while(iterator.hasNext()) {
    Pessoa p = iterator.next();
    System.out.println(p);
    Set <DateYMD> c4 = new TreeSet<>();
    c4.add(new DateYMD(27,12,2005));
    c4.add(new DateYMD(1,1,1900));
    c4.add(new DateYMD(23,5,2005));
    c4.add(new DateYMD(8,12,1961));
    c4.add(new DateYMD(2,2,2000));
    System.out.println(c4);
}

}
}
