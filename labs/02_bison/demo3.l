DIGIT [0-9]
INTEGER [+-]?{DIGIT}+
IDENTIFIER [a-z]

%%

[ \t] { }

{INTEGER} {
  yylval.num = atoi(yytext);
	return NUM;
}

{IDENTIFIER} {
  yylval.id = yytext;
	return ID;
}

"+" { return ADD; }

"=" { return ASSIGN; }

\n { return EOL; }

. { printf ("Lexer error: %s\n", yytext); exit (1); }
