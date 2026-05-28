grammar FracLang;
program : stat* EOF;
stat: 'display' expr ';' #DisplayStat
    | ID '<=' expr ';' # AssignStat
    ;

expr:   '('expr')' #ParenExpr
    |   op  = ('+' | '-') expr #UnaryExpr
    |   expr op = ('*' | ':') expr #MultDivExpr
    |   expr op = ('+' | '-') expr #SumSubExpr
    |   'reduce' expr #ReduceExprt
    |   'read' STRING #ReadString
    |   INT ('/' INT)? #FractionExpr
    |   ID  #IdExpr
    ;

READ:   'read';
REDUCE: 'reduce';
STRING  : '"'     ~   '"'   * '"' ;
ID:     [a-z]+;
INT:    [0-9]+;
WS:     [ \t\r\n]+ -> skip;
COMMENT:    '--' ~[\r\n]* -> skip;
