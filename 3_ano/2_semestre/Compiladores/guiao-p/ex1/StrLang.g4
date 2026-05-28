grammar StrLang;
program: stat+ EOF ;
stat: 'print' expr  # PrintStat 
    | ID ':' expr   # AssignStat
    ;


expr: 'trim' expr #TrimExpr
    | 'input' '(' expr ')' #InputExpr
    | '(' expr ')'  #ParenExpr
    | expr '/' expr '/' expr #  
    | expr '+' expr #ConcatExpr
    | expr '-' expr #RemoveExpr
    | ID    #VarExpr
    | STRING #StringExpr
    ;

PRINT   :   'print';
INPUT   :   'input';
TRIM    :   'trim';
ID      : [a-zA-Z_][a-zA-Z0-9_]* ; 
STRING  : '"'~["]* '"';  
COMMENT: '//' ~[\r\n]* ->skip;
WS     : [ \t\r\n]+ -> skip ;