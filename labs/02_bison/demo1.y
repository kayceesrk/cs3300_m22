%{
 #include <stdio.h>
 #include <string.h>
 #include <stdlib.h>

 int yylex (void);
 void yyerror (const char *);
%}

%token NUM ADD EOL

%%

goal: lines
;

lines:                /* empty string */
		 | lines expr EOL /* non-empty lines */
		 | lines EOL      /* empty line with only newline character */
;

expr: expr ADD term
		| term
;

term: NUM
;

%%

void yyerror (const char *s) {
  printf ("Unexpected syntax\n");
}

int main () {
  yyparse ();
	return 0;
}

#include "lex.yy.c"
