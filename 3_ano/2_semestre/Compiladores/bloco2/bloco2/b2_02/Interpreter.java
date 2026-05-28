@SuppressWarnings("CheckReturnValue")
public class Interpreter extends SuffixCalculatorBaseVisitor<Double> {

   @Override public Double visitStat(SuffixCalculatorParser.StatContext ctx) {
      if(ctx.expr()!=null){
         Double result = visit(ctx.expr());
         System.out.println("Resultado: " + result);
      }
      return null;
      //return res;
   }

   @Override public Double visitExprNumber(SuffixCalculatorParser.ExprNumberContext ctx) {
      return Double.parseDouble(ctx.Number().getText());
   }

   @Override public Double visitExprSuffix(SuffixCalculatorParser.ExprSuffixContext ctx) {
     Double left = visit(ctx.expr(0));
     Double right = visit(ctx.expr(1));
     String op = ctx.op.getText();
     switch (op) {
            case "*": return left * right;
            case "/": return left / right;
            case "+": return left + right;
            case "-": return left - right;
            default: return 0.0;
        }

   }
}
