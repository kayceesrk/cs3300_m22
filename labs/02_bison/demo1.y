/* Demo1

   Recognizer for arithmetic expressions.

 */

%{
 #include <stdio.h>
 #include <string.h>
 #include <stdlib.h>

 int yylex (void);
/* The parser repetedly calls

		 int yylex ();

	 to keep fetching the tokens from the token stream. */
 void yyerror (const char *);
%}

%token NUM ADD EOL

%%

/*
<goal> -> <lines>

<lines> -> ϵ
         | <lines> <expr> EOL
				 | <lines> EOL

<expr> -> <expr> ADD <term>
        | <term>

<term> -> NUM
*/

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
  printf ("Parser Error: Unexpected syntax\n");
}

int main () {
  yyparse ();
	return 0;
}

#include "lex.yy.c"
