DIGIT [0-9]
INTEGER [+-]?{DIGIT}+
IDENTIFIER [a-z][a-z0-9]*

%%

[ \t] { }

{INTEGER} {
  yylval.num = atoi(yytext);
	return NUM;
}

{IDENTIFIER} {
  yylval.id = strdup(yytext);
	return ID;
}

"+" { return ADD; }

\n { return EOL; }

. { printf ("Lexer error: %s\n", yytext); exit (1); }


