/* Demo2

	 Infix to post-fix expression convertor.

 */
%{
 #include <stdio.h>
 #include <string.h>
 #include <stdlib.h>

 int yylex (void);
 void yyerror (const char *);
%}

/*

 Lexer can communicate additional information about the token to Parser through
 the global variable [yylval].

 */

%union {
  int num;
  char* id;
}

/*

 By default [yylval] is declared as:

    int yylval;

 Thanks to [%union] definition above, the [yylval] is declared as:

    struct {
		  int num;
			char* id;
		} yylval;

 */

%token <num> NUM
%token ADD EOL 		/* Not going to use [yylval] here */
%token <id> ID

%%

goal: lines
;

lines:                									 /* empty string */
		 | lines expr EOL { printf ("\n"); } /* non-empty lines */
		 | lines EOL      									 /* empty line with only newline
		 																				character */
;

expr: expr ADD term { printf ("+ "); }
		| term
;

term: NUM { printf ("%d ", $1); }
		| ID { printf ("%s ", $1); }
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
