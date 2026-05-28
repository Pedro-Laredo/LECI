import java.util.*;

@SuppressWarnings("CheckReturnValue")
public class Interpreter extends VectorBaseVisitor<Object> {

   HashMap<String,Object> memory = new HashMap<>();

   @Override public Object visitProgram(VectorParser.ProgramContext ctx) {
      Object res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public Object visitShowStat(VectorParser.ShowStatContext ctx) {
      Object val = visit(ctx.expr());
      System.out.println(val);
      return null;
   }

   @Override public Object visitAssignStat(VectorParser.AssignStatContext ctx) {
      String id = ctx.ID().getText();
      Object vector = visit(ctx.expr());
      return memory.put(id,vector);

   }

   @Override public Object visitIdexpr(VectorParser.IdexprContext ctx) {
      String id = ctx.ID().getText();
      if(!memory.containsKey(id)){
         System.out.println("Semantic error, variable: " + id + "not declared");
         System.exit(1);
      }
      return memory.get(id);
   }

   @Override public Object visitSumSubExpr(VectorParser.SumSubExprContext ctx) {
      Object left = visit(ctx.expr(0));
      Object right = visit(ctx.expr(1));
      String op = ctx.op.getText();
      if(left instanceof Double && right instanceof Double){
         Double l = (Double) left;
         Double r = (Double) right;
         return op.equals("+") ? l+r : l-r; 
      }
      return null;
   }

   @Override public Object visitNumberExpr(VectorParser.NumberExprContext ctx) {
      return Double.parseDouble(ctx.NUMBER().getText());
      //return res;
   }

   @Override public Object visitMultExpr(VectorParser.MultExprContext ctx) {
      Object res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public Object visitParensExpr(VectorParser.ParensExprContext ctx) {
      return visit(ctx.expr());
      //return res;
   }

   @Override public Object visitUnaryExpr(VectorParser.UnaryExprContext ctx) {
      Object res = null;
      return visitChildren(ctx);
      //return res;
   }

   @Override public Object visitVetExpr(VectorParser.VetExprContext ctx) {
      List<Double> vec = new ArrayList<>();
      for(var t:ctx.NUMBER()){
         vec.add(Double.parseDouble(t.getText()));
      }
      return vec;
   }
}
