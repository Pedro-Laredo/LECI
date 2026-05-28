import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.tree.*;
import org.stringtemplate.v4.*;
import java.util.*;

public class Exercicio01 extends CSVBaseListener {
    STGroup templates = new STGroupFile("csv.stg");
    List<String> headers = new ArrayList<>();
    List<List<String>> rows = new ArrayList<>();
    List<String> currentRow;
    boolean isHeader = true;

    @Override public void enterRow(CSVParser.RowContext ctx) {
        currentRow = new ArrayList<>();
    }

    @Override public void exitRow(CSVParser.RowContext ctx) {
        if (isHeader) { headers = currentRow; isHeader = false; }
        else          { rows.add(currentRow); }
    }

    @Override public void exitField(CSVParser.FieldContext ctx) {
        currentRow.add(ctx.getText());
    }

    public String render() {
        ST st = templates.getInstanceOf("tabela");
        st.add("headers", headers);
        st.add("rows", rows);
        return st.render();
    }

    public static void main(String[] args) throws Exception {
        CharStream input = CharStreams.fromStream(System.in);
        CSVLexer lexer = new CSVLexer(input);
        CSVParser parser = new CSVParser(new CommonTokenStream(lexer));
        ParseTree tree = parser.file();

        Exercicio01 conv = new Exercicio01();
        new ParseTreeWalker().walk(conv, tree);
        System.out.println(conv.render());
    }
}