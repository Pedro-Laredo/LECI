import java.util.HashMap;
import java.util.Scanner;

@SuppressWarnings("CheckReturnValue")
public class Interpreter extends StrLangBaseVisitor<String> {
   HashMap<String, String> memory = new HashMap<>();
   Scanner scanner = new Scanner(System.in);


   @Override public String visitProgram(StrLangParser.ProgramContext ctx) {
      String res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public String visitPrintStat(StrLangParser.PrintStatContext ctx) {
      String value = visit(ctx.expr());
      System.out.println(value);
      return null;
      //return res;
   }

   @Override public String visitAssignStat(StrLangParser.AssignStatContext ctx) {
      String id = ctx.ID().getText();
      String value = visit(ctx.expr());
      memory.put(id,value);
      return value;
      //return res;
   }

   @Override public String visitTrimExpr(StrLangParser.TrimExprContext ctx) {
      String text = visit(ctx.expr());
      return text.trim();
      //return res;
   }

   @Override public String visitStringExpr(StrLangParser.StringExprContext ctx) {
      String text = ctx.STRING().getText();
      return text.substring(1,text.length()-1);
      //return res;
   }

   @Override public String visitConcatExpr(StrLangParser.ConcatExprContext ctx) {
      String left = visit(ctx.expr(0));
      String right = visit(ctx.expr(1));
      return left+right;
   }

   @Override public String visitInputExpr(StrLangParser.InputExprContext ctx) {
      String prompt = visit(ctx.expr());
      System.out.print(prompt);
      String userInput = scanner.nextLine();
      return userInput;
      //return res;
   }

   @Override public String visitVarExpr(StrLangParser.VarExprContext ctx) {
      String id = ctx.ID().getText();
      if(memory.containsKey(id)){
         return memory.get(id);
      }
      System.err.println("Erro: Variavel '"+id+"'Nao foi declarada");
      return "";
   }

   @Override public String visitParenExpr(StrLangParser.ParenExprContext ctx) {
      return visit(ctx.expr());
      //return res;
   }

   @Override public String visitReplaceExpr(StrLangParser.ReplaceExprContext ctx) {
      String original = visit(ctx.expr(0));
      String target = visit(ctx.expr(1));
      String replacement = visit(ctx.expr(2));
      return original.replace(target, replacement); // Usa o método do Java para substituir
   }

   @Override public String visitRemoveExpr(StrLangParser.RemoveExprContext ctx) {
      String left = visit(ctx.expr(0));
      String right = visit(ctx.expr(1));
      return left.replace(right,"");
      //return res;
   }
}
