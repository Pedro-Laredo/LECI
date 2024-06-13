package aula11;

import java.util.List;

public class SimpleGradeCalculator implements IGradeCalculator {
    @Override // Optional annotation to indicate overriding
    public double calculate(List<Double> grades) {
      double sum = 0; // Use a more descriptive variable name
      for (Double grade : grades) {
        sum += grade;
      }
      return sum / grades.size(); // Calculate and return the average
    }
  }
