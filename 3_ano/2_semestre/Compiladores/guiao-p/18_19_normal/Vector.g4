grammar Vector;
program: stat* EOF;

stat : 'show' expr ';' #showStat
        | expr '->' ID ';' #AssignStat
        ; 
expr:   '['NUMBER(',' NUMBER)*']'      #VetExpr
        |'('expr')'          #ParensExpr
        | op=('+' | '-') expr   #UnaryExpr
        | expr op= ('*'|'.') expr     #MultExpr
        | expr op=('+'|'-') expr   #SumSubExpr
        | NUMBER    #NumberExpr
        | ID    #Idexpr
        ;

ID  :   [a-z] [a-z0-9]* ;
NUMBER  :   [0-9] +('.' [0-9]+)? ;
COMMENT :   '#' ~[\r\n]* ->skip ;
WS      :   [ \n\t\r]+ ->skip ;

