import java.util.*;
@SuppressWarnings("CheckReturnValue")
public class Interpreter extends ComBaseVisitor<Imaginary> {
   
   HashMap<String,Imaginary> memory = new HashMap<>();

   @Override public Imaginary visitProgram(ComParser.ProgramContext ctx) {
      Imaginary res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public Imaginary visitDisplayStat(ComParser.DisplayStatContext ctx) {
      Imaginary res = visit(ctx.expr());
      System.out.println(res.toString());
      return null;
      //return res;
   }

   @Override public Imaginary visitAssginStat(ComParser.AssginStatContext ctx) {
      String id = ctx.ID().getText();
      Imaginary number = visit(ctx.expr());
      memory.put(id,number);
      return number;
   }

   @Override public Imaginary visitImagExpr(ComParser.ImagExprContext ctx) {
      String text = ctx.IMAG().getText();
      text = text.replace("i","");
      double imagValue = 1.0;
      if(text.equals("-")){
         imagValue = -1.0;
   }  else if(!text.isEmpty()){
      imagValue = Double.parseDouble(text);
   }
   return new Imaginary(0, imagValue);
   }

   @Override public Imaginary visitIdexpr(ComParser.IdexprContext ctx) {
      String id = ctx.ID().getText();
      if(memory.get(id) != null){
         return memory.get(id);
      }
      return null;
      //return res;
   }

   @Override public Imaginary visitMulDivExpr(ComParser.MulDivExprContext ctx) {
      Imaginary left = visit(ctx.expr(0));
      Imaginary right = visit(ctx.expr(1));
      String operand = ctx.op.getText();
      if(operand.equals("*")){
         return left.multiply(right); 
      }
      else{
         return left.divide(right);
      }

      //return res;
   }

   @Override public Imaginary visitNumberExpr(ComParser.NumberExprContext ctx) {
   String text = ctx.NUMBER().getText();
   Double real = Double.parseDouble(text);
   return new Imaginary(real, 0);
      //return res;
   }

   @Override public Imaginary visitParensExpr(ComParser.ParensExprContext ctx) {
      return visit(ctx.expr());
   }

   @Override public Imaginary visitUnaryExpr(ComParser.UnaryExprContext ctx) {
      String operand = ctx.op.getText();
      Imaginary value = visit(ctx.expr());
      if(operand.equals("+")){
         return value;
      }
      else{
         return new Imaginary(-value.getReal(),-value.getImag());
      }


      //return res;
   }

   @Override public Imaginary visitAddSubExpr(ComParser.AddSubExprContext ctx) {
      Imaginary left = visit(ctx.expr(0));
      Imaginary right = visit(ctx.expr(1));
      String operand = ctx.op.getText();
      if(operand.equals("+")){
         return left.add(right);
      }
      else{
         return left.subtract(right);
      }
   }
}
