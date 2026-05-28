import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

public class Main {
    public static void main(String[] args) throws Exception {
        // Lê o texto que vais passar pelo terminal
        CharStream input = CharStreams.fromStream(System.in);
        
        // Passa pelo Lexer e cria os tokens
        HelloLexer lexer = new HelloLexer(input);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        
        // Passa pelo Parser e cria a árvore usando a tua regra 'r'
        HelloParser parser = new HelloParser(tokens);
        ParseTree tree = parser.r(); 
        
        // Chama o teu Visitor para executar a ação
        Execute visitor = new Execute();
        visitor.visit(tree);
    }
}
