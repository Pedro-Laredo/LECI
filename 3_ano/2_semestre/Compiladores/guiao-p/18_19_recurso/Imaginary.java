public class Imaginary {
    private double real;
    private double imag;

    public Imaginary(double real, double imag) {
        this.real = real;
        this.imag = imag;
    }

    public double getReal() { return real; }
    public double getImag() { return imag; }

    // Soma: (a + bi) + (c + di) = (a + c) + (b + d)i
    public Imaginary add(Imaginary other) {
        return new Imaginary(this.real + other.real, this.imag + other.imag);
    }

    // Subtração: (a + bi) - (c + di) = (a - c) + (b - d)i
    public Imaginary subtract(Imaginary other) {
        return new Imaginary(this.real - other.real, this.imag - other.imag);
    }

    // Multiplicação: (a + bi) * (c + di) = (ac - bd) + (ad + bc)i
    public Imaginary multiply(Imaginary other) {
        double r = (this.real * other.real) - (this.imag * other.imag);
        double i = (this.real * other.imag) + (this.imag * other.real);
        return new Imaginary(r, i);
    }

    // Divisão conforme a fórmula do enunciado
    public Imaginary divide(Imaginary other) {
        double denominator = Math.pow(other.real, 2) + Math.pow(other.imag, 2);
        if (denominator == 0) throw new ArithmeticException("Divisão por zero complexo.");
        
        double r = ((this.real * other.real) + (this.imag * other.imag)) / denominator;
        double i = ((this.imag * other.real) - (this.real * other.imag)) / denominator;
        return new Imaginary(r, i);
    }

    @Override
    public String toString() {
        if (imag == 0) return formatNum(real);
        if (real == 0) return formatImag(imag) + "i";
        return formatNum(real) + (imag >= 0 ? "+" : "") + formatImag(imag) + "i";
    }

    private String formatNum(double v) {
        if (v == (long) v) return String.valueOf((long) v);
        return String.valueOf(v);
    }

    private String formatImag(double v) {
        if (v == 1.0) return "";
        if (v == -1.0) return "-";
        if (v == (long) v) return String.valueOf((long) v);
        return String.valueOf(v);
}
}
