// Generated from FracLang.g4 by ANTLR 4.13.2
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link FracLangParser}.
 */
public interface FracLangListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link FracLangParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(FracLangParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link FracLangParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(FracLangParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by the {@code DisplayStat}
	 * labeled alternative in {@link FracLangParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterDisplayStat(FracLangParser.DisplayStatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code DisplayStat}
	 * labeled alternative in {@link FracLangParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitDisplayStat(FracLangParser.DisplayStatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AssignStat}
	 * labeled alternative in {@link FracLangParser#stat}.
	 * @param ctx the parse tree
	 */
	void enterAssignStat(FracLangParser.AssignStatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AssignStat}
	 * labeled alternative in {@link FracLangParser#stat}.
	 * @param ctx the parse tree
	 */
	void exitAssignStat(FracLangParser.AssignStatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code MultDivExpr}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterMultDivExpr(FracLangParser.MultDivExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code MultDivExpr}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitMultDivExpr(FracLangParser.MultDivExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code FractionExpr}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterFractionExpr(FracLangParser.FractionExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code FractionExpr}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitFractionExpr(FracLangParser.FractionExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code SumSubExpr}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterSumSubExpr(FracLangParser.SumSubExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code SumSubExpr}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitSumSubExpr(FracLangParser.SumSubExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code IdExpr}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterIdExpr(FracLangParser.IdExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code IdExpr}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitIdExpr(FracLangParser.IdExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ReadString}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterReadString(FracLangParser.ReadStringContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ReadString}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitReadString(FracLangParser.ReadStringContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ParenExpr}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterParenExpr(FracLangParser.ParenExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ParenExpr}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitParenExpr(FracLangParser.ParenExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code UnaryExpr}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterUnaryExpr(FracLangParser.UnaryExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code UnaryExpr}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitUnaryExpr(FracLangParser.UnaryExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ReduceExprt}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterReduceExprt(FracLangParser.ReduceExprtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ReduceExprt}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitReduceExprt(FracLangParser.ReduceExprtContext ctx);
}