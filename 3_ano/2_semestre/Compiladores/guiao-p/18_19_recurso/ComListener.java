// Generated from Com.g4 by ANTLR 4.13.2
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link ComParser}.
 */
public interface ComListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link ComParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(ComParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link ComParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(ComParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by the {@code DisplayStat}
	 * labeled alternative in {@link ComParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterDisplayStat(ComParser.DisplayStatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code DisplayStat}
	 * labeled alternative in {@link ComParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitDisplayStat(ComParser.DisplayStatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AssginStat}
	 * labeled alternative in {@link ComParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterAssginStat(ComParser.AssginStatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AssginStat}
	 * labeled alternative in {@link ComParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitAssginStat(ComParser.AssginStatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ImagExpr}
	 * labeled alternative in {@link ComParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterImagExpr(ComParser.ImagExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ImagExpr}
	 * labeled alternative in {@link ComParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitImagExpr(ComParser.ImagExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Idexpr}
	 * labeled alternative in {@link ComParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterIdexpr(ComParser.IdexprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Idexpr}
	 * labeled alternative in {@link ComParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitIdexpr(ComParser.IdexprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code MulDivExpr}
	 * labeled alternative in {@link ComParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterMulDivExpr(ComParser.MulDivExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code MulDivExpr}
	 * labeled alternative in {@link ComParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitMulDivExpr(ComParser.MulDivExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code NumberExpr}
	 * labeled alternative in {@link ComParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterNumberExpr(ComParser.NumberExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code NumberExpr}
	 * labeled alternative in {@link ComParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitNumberExpr(ComParser.NumberExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ParensExpr}
	 * labeled alternative in {@link ComParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterParensExpr(ComParser.ParensExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ParensExpr}
	 * labeled alternative in {@link ComParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitParensExpr(ComParser.ParensExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code UnaryExpr}
	 * labeled alternative in {@link ComParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterUnaryExpr(ComParser.UnaryExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code UnaryExpr}
	 * labeled alternative in {@link ComParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitUnaryExpr(ComParser.UnaryExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AddSubExpr}
	 * labeled alternative in {@link ComParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterAddSubExpr(ComParser.AddSubExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AddSubExpr}
	 * labeled alternative in {@link ComParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitAddSubExpr(ComParser.AddSubExprContext ctx);
}