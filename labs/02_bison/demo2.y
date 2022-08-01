%{
 #include <stdio.h>
 #include <string.h>
 #include <stdlib.h>

 int yylex (void);
 void yyerror (const char *);
%}

%union {
  int num;
  char* id;
}

%token <num> NUM
%token ADD EOL
%token <id> ID

%%

goal: lines
;

lines:                /* empty string */
		 | lines expr EOL /* non-empty lines */
		 | lines EOL      /* empty line with only newline character */
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
