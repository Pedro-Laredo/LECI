import java.util.HashMap;
import java.util.Scanner;

@SuppressWarnings("CheckReturnValue")
public class Interpreter extends FracLangBaseVisitor<Fraction> {

   HashMap<String,Fraction> memory = new HashMap<>();
   Scanner scanner = new Scanner(System.in);

   @Override public Fraction visitProgram(FracLangParser.ProgramContext ctx) {
      Fraction res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public Fraction visitDisplayStat(FracLangParser.DisplayStatContext ctx) {
      Fraction res = visit(ctx.expr());
      if(res!=null){
         System.out.println(res);
      }
      return res;
   }

   @Override public Fraction visitAssignStat(FracLangParser.AssignStatContext ctx) {
      Fraction res = visit(ctx.expr());
      String varName = ctx.ID().getText();
      memory.put(varName,res);
      return res;
      //return res;
   }

   @Override public Fraction visitParenExpr(FracLangParser.ParenExprContext ctx) {
      return visit(ctx.expr());
      //return res;
   }

   @Override public Fraction visitUnaryExpr(FracLangParser.UnaryExprContext ctx) {
      Fraction res = visit(ctx.expr());
      String operand = ctx.op.getText();
      if(operand.equals("-")){
         return new Fraction(-res.num,res.den);
      }
      return new Fraction(res.num,res.den);

   }

   @Override public Fraction visitMultDivExpr(FracLangParser.MultDivExprContext ctx) {
      Fraction left = visit(ctx.expr(0));
      Fraction right = visit(ctx.expr(1));
      String operand = ctx.op.getText();
      if(operand.equals("*")){
         return left.mult(right);
      }
      else{
         return left.div(right);
      }
      //return res;
   }

   @Override public Fraction visitSumSubExpr(FracLangParser.SumSubExprContext ctx) {
      Fraction left = visit(ctx.expr(0));
      Fraction right = visit(ctx.expr(1));
      String operand = ctx.op.getText();
      if(operand.equals("+")){
         return left.add(right);
      }
      else{
         return left.sub(right);
      }
   }

   @Override public Fraction visitReduceExprt(FracLangParser.ReduceExprtContext ctx) {
         Fraction res = visit(ctx.expr());
        // Chama o método que deves implementar na classe Fraction (usando o MDC)
         return res.reduce();
   }

   @Override public Fraction visitReadString(FracLangParser.ReadStringContext ctx) {
      String prompt = ctx.STRING().getText();
      prompt = prompt.substring(1, prompt.length() - 1);
      System.out.println(prompt);
      String input = scanner.nextLine().trim();
      if (input.contains("/")) {
            String[] parts = input.split("/");
            int num = Integer.parseInt(parts[0]);
            int den = Integer.parseInt(parts[1]);
            return new Fraction(num, den);
        } else {
            int num = Integer.parseInt(input);
            return new Fraction(num, 1);
        }
   }

@Override 
    public Fraction visitFractionExpr(FracLangParser.FractionExprContext ctx) {
        // NOVO: Adicionado (0) para ir buscar o primeiro INT da lista
        int num = Integer.parseInt(ctx.INT(0).getText());
        
        if (ctx.INT().size() > 1) {
            // NOVO: Adicionado (1) para ir buscar o segundo INT da lista
            int den = Integer.parseInt(ctx.INT(1).getText());
            return new Fraction(num, den);
        }
        
        return new Fraction(num, 1);
    }

   @Override public Fraction visitIdExpr(FracLangParser.IdExprContext ctx) {
      String varName = ctx.ID().getText();
      if(!memory.containsKey(varName)){
         System.err.println("Erro semantico: Avariavel '" +varName + "' não existe");
         System.exit(1);
      }
      return memory.get(varName);
   }
}
