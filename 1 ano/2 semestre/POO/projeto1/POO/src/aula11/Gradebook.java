package aula11;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Gradebook {
    private List<Student> students;

    public Gradebook(){
        this.students = new ArrayList<>();
    }

    public void load(String filename) {
        try {
            Scanner ler = new Scanner(new FileReader(filename));
            while (ler.hasNextLine()) {
                String line = ler.nextLine();
                String parts[] = line.split("\\|");
                String studentName = parts[0];
                List<Double> grades = new ArrayList<>();
                for(int i = 1; i<parts.length;i++){
                    grades.add(Double.parseDouble(parts[i]));
                }

                Student student = new Student(studentName, grades);
                students.add(student);
            }
            ler.close(); // Close the Scanner after reading
        } catch (FileNotFoundException e) {
            // Handle the exception if the file is not found
            System.out.println("Error: File " + filename + " not found.");
        }
        
        }
    public void addStudent(Student student){
        students.add(student);
    }

    public void removeStudent(String studentName){
        for(Student student : students){
            if( studentName == student.getName()){
                students.remove(student);
            }
        }
    }

    public Student getStudent(String studentName){
        for(Student student : students){
            if(student.getName().equals(studentName)){
                return student;
            }
        }
        return null;
    }
    public double calculateAverageGrade(String studentName){
        Student aluno = getStudent(studentName);
        List<Double> grades = aluno.getGrades();
            double sum = 0;
            for (Double grade : grades) {
                sum += grade;
            }
            return sum / grades.size();
    }

    public void printAllStudents(){
        for(Student student : students){
            System.out.println(student);
        }
    }
}
