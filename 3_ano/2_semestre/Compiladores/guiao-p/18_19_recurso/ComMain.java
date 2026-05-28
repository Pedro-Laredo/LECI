import java.io.IOException;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;

public class ComMain {
   public static void main(String[] args) {
try {
// create a CharStream that reads from standard input:
CharStream input = CharStreams.fromFileName(args[0]);
// create a lexer that feeds off of input CharStream:
ComLexer lexer = new ComLexer(input);
// create a buffer of tokens pulled from the lexer:
CommonTokenStream tokens = new CommonTokenStream(lexer);
// create a parser that feeds off the tokens buffer:
ComParser parser = new ComParser(tokens);
// replace error listener:
//parser.removeErrorListeners(); // remove ConsoleErrorListener
//parser.addErrorListener(new ErrorHandlingListener());
// begin parsing at program rule:
ParseTree tree = parser.program();
if (parser.getNumberOfSyntaxErrors() == 0) {
   Interpreter interpreter = new Interpreter();
   interpreter.visit(tree);
   // System.out.println(tree.toStringTree(parser));
}
}
catch(IOException e) {
e.printStackTrace();
System.exit(1);
}
catch(RecognitionException e) {
e.printStackTrace();
System.exit(1);
}
}
}
