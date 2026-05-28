// Generated from FracLang.g4 by ANTLR 4.13.2
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link FracLangParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface FracLangVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link FracLangParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(FracLangParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by the {@code DisplayStat}
	 * labeled alternative in {@link FracLangParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDisplayStat(FracLangParser.DisplayStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code AssignStat}
	 * labeled alternative in {@link FracLangParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignStat(FracLangParser.AssignStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code MultDivExpr}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMultDivExpr(FracLangParser.MultDivExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code FractionExpr}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFractionExpr(FracLangParser.FractionExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code SumSubExpr}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSumSubExpr(FracLangParser.SumSubExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code IdExpr}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIdExpr(FracLangParser.IdExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ReadString}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitReadString(FracLangParser.ReadStringContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ParenExpr}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParenExpr(FracLangParser.ParenExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code UnaryExpr}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitUnaryExpr(FracLangParser.UnaryExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ReduceExprt}
	 * labeled alternative in {@link FracLangParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitReduceExprt(FracLangParser.ReduceExprtContext ctx);
}