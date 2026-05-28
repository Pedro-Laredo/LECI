// Generated from Com.g4 by ANTLR 4.13.2
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link ComParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface ComVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link ComParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(ComParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by the {@code DisplayStat}
	 * labeled alternative in {@link ComParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDisplayStat(ComParser.DisplayStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code AssginStat}
	 * labeled alternative in {@link ComParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssginStat(ComParser.AssginStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ImagExpr}
	 * labeled alternative in {@link ComParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitImagExpr(ComParser.ImagExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Idexpr}
	 * labeled alternative in {@link ComParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIdexpr(ComParser.IdexprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code MulDivExpr}
	 * labeled alternative in {@link ComParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMulDivExpr(ComParser.MulDivExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code NumberExpr}
	 * labeled alternative in {@link ComParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNumberExpr(ComParser.NumberExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ParensExpr}
	 * labeled alternative in {@link ComParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParensExpr(ComParser.ParensExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code UnaryExpr}
	 * labeled alternative in {@link ComParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitUnaryExpr(ComParser.UnaryExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code AddSubExpr}
	 * labeled alternative in {@link ComParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAddSubExpr(ComParser.AddSubExprContext ctx);
}