// Generated from Vector.g4 by ANTLR 4.13.2
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link VectorParser}.
 */
public interface VectorListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link VectorParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(VectorParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link VectorParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(VectorParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by the {@code showStat}
	 * labeled alternative in {@link VectorParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterShowStat(VectorParser.ShowStatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code showStat}
	 * labeled alternative in {@link VectorParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitShowStat(VectorParser.ShowStatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AssignStat}
	 * labeled alternative in {@link VectorParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterAssignStat(VectorParser.AssignStatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AssignStat}
	 * labeled alternative in {@link VectorParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitAssignStat(VectorParser.AssignStatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Idexpr}
	 * labeled alternative in {@link VectorParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterIdexpr(VectorParser.IdexprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Idexpr}
	 * labeled alternative in {@link VectorParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitIdexpr(VectorParser.IdexprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code SumSubExpr}
	 * labeled alternative in {@link VectorParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterSumSubExpr(VectorParser.SumSubExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code SumSubExpr}
	 * labeled alternative in {@link VectorParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitSumSubExpr(VectorParser.SumSubExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code NumberExpr}
	 * labeled alternative in {@link VectorParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterNumberExpr(VectorParser.NumberExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code NumberExpr}
	 * labeled alternative in {@link VectorParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitNumberExpr(VectorParser.NumberExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code MultExpr}
	 * labeled alternative in {@link VectorParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterMultExpr(VectorParser.MultExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code MultExpr}
	 * labeled alternative in {@link VectorParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitMultExpr(VectorParser.MultExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ParensExpr}
	 * labeled alternative in {@link VectorParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterParensExpr(VectorParser.ParensExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ParensExpr}
	 * labeled alternative in {@link VectorParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitParensExpr(VectorParser.ParensExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code UnaryExpr}
	 * labeled alternative in {@link VectorParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterUnaryExpr(VectorParser.UnaryExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code UnaryExpr}
	 * labeled alternative in {@link VectorParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitUnaryExpr(VectorParser.UnaryExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code VetExpr}
	 * labeled alternative in {@link VectorParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterVetExpr(VectorParser.VetExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code VetExpr}
	 * labeled alternative in {@link VectorParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitVetExpr(VectorParser.VetExprContext ctx);
}