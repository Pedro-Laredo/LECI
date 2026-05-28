grammar Com;
program:   stat* EOF;
stat:  'display' expr ';' #DisplayStat
        | ID '<=' expr ';' #AssginStat
        ;

expr:   IMAG #ImagExpr
    |   '('expr')'  #ParensExpr
    |   op=('+' | '-') expr  #UnaryExpr
    |   expr op=('*' | ':' ) expr #MulDivExpr
    |   expr op=('+' | '-') expr #AddSubExpr
    |   NUMBER #NumberExpr
    |   ID #Idexpr
    ;

IMAG    : [0-9]* ('.' [0-9]+)? 'i' ;
NUMBER: [0-9]+ ('.' [0-9]+)? ;
ID:     [a-zA-Z] [a-zA-Z0-9]* ;
COMMENT:'*COM*' ~[\r\n]* ->skip ;
WS:     [ \n\r\t]+ ->skip;
