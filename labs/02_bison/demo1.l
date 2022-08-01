DIGIT [0-9]
INTEGER [+-]?{DIGIT}+

%%

[ \t] { }

{INTEGER} {
	return NUM;
}

"+" { return ADD; }

\n { return EOL; }

. { printf ("Lexer error: %s\n", yytext); exit (1); }
