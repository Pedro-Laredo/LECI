grammar CSV;

file    : hdr row+ EOF ;
hdr     : row ;
row     : field (',' field)* NL ;
field   : TEXT
        | STRING
        |
        ;

TEXT    : ~[,\n\r"]+ ;
STRING  : '"' ('""' | ~'"')* '"' ;
NL      : '\r'? '\n' ;