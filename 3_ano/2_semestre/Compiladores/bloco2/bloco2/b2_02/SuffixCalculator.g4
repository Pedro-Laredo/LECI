grammar SuffixCalculator;
program:
stat * EOF  //Zero or more repetitions of stat
    ;
stat :
        expr? NEWLINE   //Optative expr followed by and end-of-line
    ;
expr :
        expr expr op=('*' | '/' | '+' | '-' ) #ExprSuffix
    | Number #ExprNumber
    ;

Number : [0-9] +('.'[0-9]+)?;
NEWLINE:    '\r'? '\n';
WS: [ \t]+ ->skip;

