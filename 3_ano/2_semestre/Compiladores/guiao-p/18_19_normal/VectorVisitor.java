// Generated from Vector.g4 by ANTLR 4.13.2
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link VectorParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface VectorVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link VectorParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(VectorParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by the {@code showStat}
	 * labeled alternative in {@link VectorParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitShowStat(VectorParser.ShowStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code AssignStat}
	 * labeled alternative in {@link VectorParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignStat(VectorParser.AssignStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Idexpr}
	 * labeled alternative in {@link VectorParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIdexpr(VectorParser.IdexprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code SumSubExpr}
	 * labeled alternative in {@link VectorParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSumSubExpr(VectorParser.SumSubExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code NumberExpr}
	 * labeled alternative in {@link VectorParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNumberExpr(VectorParser.NumberExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code MultExpr}
	 * labeled alternative in {@link VectorParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMultExpr(VectorParser.MultExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ParensExpr}
	 * labeled alternative in {@link VectorParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParensExpr(VectorParser.ParensExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code UnaryExpr}
	 * labeled alternative in {@link VectorParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitUnaryExpr(VectorParser.UnaryExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code VetExpr}
	 * labeled alternative in {@link VectorParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVetExpr(VectorParser.VetExprContext ctx);
}