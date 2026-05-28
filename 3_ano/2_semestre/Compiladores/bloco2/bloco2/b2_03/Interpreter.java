@SuppressWarnings("CheckReturnValue")
public class Interpreter extends CalculatorBaseVisitor<Double> {


   @Override public Double visitStat(CalculatorParser.StatContext ctx) {
      if(ctx.expr()!=null){
         Double res = visit(ctx.expr());
         System.out.println(res);
         return res;
      }
   }

   @Override public Double visitExprMulDivMod(CalculatorParser.ExprMulDivModContext ctx) {
   Double left = ctx.visit(0);
   Double right = ctx.visit(1);
   String op = ctx.op.getText();
   switch (op) {
      case "*" :return left*right;
      case "/": 
         if (right == 0) {
            System.err.println("Error: divide by zero");
            return 0.0; // Ou podes retornar null ou Double.NaN
         }
      return left / right;
      case "%" : return left%right;
      default: return null;
   }
   }

   @Override public Double visitExprAddSub(CalculatorParser.ExprAddSubContext ctx) {
      Double left = ctx.visit(0);
      Double right = ctx.visit(1);
      String op = ctx.op.getText();
      switch(op){
         case "+"
      }
   }

   @Override public Double visitExprParent(CalculatorParser.ExprParentContext ctx) {
      Double res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public Double visitExprInteger(CalculatorParser.ExprIntegerContext ctx) {
      return Double.parseDouble(ctx.Number().getText());
   }
}
