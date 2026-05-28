grammar Hello;

r: (greetings | bye)*   EOF;
greetings:  'hello' Identifier+;
bye:    'goodbye' Identifier+;

Identifier: [a-zA-Z]+;
WhiteSpace: [ \t\r\n]+ -> skip;
