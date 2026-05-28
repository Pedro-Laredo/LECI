import org.antlr.v4.runtime.tree.AbstractParseTreeVisitor;
import org.antlr.v4.runtime.tree.TerminalNode;

@SuppressWarnings("CheckReturnValue")
public class Execute extends HelloBaseVisitor<String> {

    @Override 
    public String visitGreetings(HelloParser.GreetingsContext ctx) {
        // Constrói o nome juntando todos os identificadores com um espaço
        String nome = "";
        for (TerminalNode node : ctx.Identifier()) {
            nome += node.getText() + " ";
        }
        System.out.println("Olá " + nome.trim() + ".");
        return visitChildren(ctx);
    }

    @Override 
    public String visitBye(HelloParser.ByeContext ctx) {
        String nome = "";
        for (TerminalNode node : ctx.Identifier()) {
            nome += node.getText() + " ";
        }
        System.out.println("Adeus " + nome.trim() + ".");
        return visitChildren(ctx);
    }
}