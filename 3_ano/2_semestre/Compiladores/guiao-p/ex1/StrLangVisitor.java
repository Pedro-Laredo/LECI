// Generated from StrLang.g4 by ANTLR 4.13.2
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link StrLangParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface StrLangVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link StrLangParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(StrLangParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by the {@code PrintStat}
	 * labeled alternative in {@link StrLangParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrintStat(StrLangParser.PrintStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code AssignStat}
	 * labeled alternative in {@link StrLangParser#stat}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignStat(StrLangParser.AssignStatContext ctx);
	/**
	 * Visit a parse tree produced by the {@code TrimExpr}
	 * labeled alternative in {@link StrLangParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTrimExpr(StrLangParser.TrimExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code StringExpr}
	 * labeled alternative in {@link StrLangParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStringExpr(StrLangParser.StringExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ConcatExpr}
	 * labeled alternative in {@link StrLangParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConcatExpr(StrLangParser.ConcatExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code InputExpr}
	 * labeled alternative in {@link StrLangParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInputExpr(StrLangParser.InputExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code VarExpr}
	 * labeled alternative in {@link StrLangParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarExpr(StrLangParser.VarExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ParenExpr}
	 * labeled alternative in {@link StrLangParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParenExpr(StrLangParser.ParenExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ReplaceExpr}
	 * labeled alternative in {@link StrLangParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitReplaceExpr(StrLangParser.ReplaceExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code RemoveExpr}
	 * labeled alternative in {@link StrLangParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitRemoveExpr(StrLangParser.RemoveExprContext ctx);
}