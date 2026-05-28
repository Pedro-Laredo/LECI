public class Fraction {
    public int num; // Numerador
    public int den; // Denominador

    // Construtor
    public Fraction(int num, int den) {
        if (den == 0) {
            System.err.println("Erro Matemático: Divisão por zero!");
            System.exit(1);
        }
        
        // Se o denominador for negativo, passamos o sinal para o numerador 
        // para manter as coisas arrumadas (ex: 1/-2 vira -1/2)
        if (den < 0) {
            this.num = -num;
            this.den = -den;
        } else {
            this.num = num;
            this.den = den;
        }
    }

    // --------------------------------------------------------
    // OPERAÇÕES MATEMÁTICAS
    // --------------------------------------------------------

    // Soma: a/b + c/d = (ad + bc) / bd
    public Fraction add(Fraction f) {
        int novoNum = (this.num * f.den) + (f.num * this.den);
        int novoDen = this.den * f.den;
        return new Fraction(novoNum, novoDen);
    }

    // Subtração: a/b - c/d = (ad - bc) / bd
    public Fraction sub(Fraction f) {
        int novoNum = (this.num * f.den) - (f.num * this.den);
        int novoDen = this.den * f.den;
        return new Fraction(novoNum, novoDen);
    }

    // Multiplicação: a/b * c/d = ac / bd
    public Fraction mult(Fraction f) {
        return new Fraction(this.num * f.num, this.den * f.den);
    }

    // Divisão: a/b : c/d = a/b * d/c = ad / bc
    public Fraction div(Fraction f) {
        if (f.num == 0) {
            System.err.println("Erro Matemático: Divisão por zero na operação de frações!");
            System.exit(1);
        }
        return new Fraction(this.num * f.den, this.den * f.num);
    }

    // --------------------------------------------------------
    // REDUÇÃO (Algoritmo de Euclides)
    // --------------------------------------------------------

    // Função privada para calcular o Máximo Divisor Comum (MDC)
    private int mdc(int a, int b) {
        if (b == 0) {
            return Math.abs(a);
        }
        return mdc(b, a % b);
    }

    // Reduz a fração e devolve uma nova simplificada
    public Fraction reduce() {
        int divisorComum = mdc(this.num, this.den);
        return new Fraction(this.num / divisorComum, this.den / divisorComum);
    }

    // --------------------------------------------------------
    // APRESENTAÇÃO NA CONSOLA
    // --------------------------------------------------------

    @Override
    public String toString() {
        if (num == 0) {
            return "0"; // Se o numerador for 0, o resultado é 0
        }
        if (den == 1) {
            return String.valueOf(num); // Se o denominador for 1, mostra só o inteiro
        }
        // Caso contrário, mostra a fração normal
        return num + "/" + den; 
    }
}