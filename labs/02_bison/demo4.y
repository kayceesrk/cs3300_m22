/* DEMO4

	 Accept programs with balanced parentheses ("{" & "}"), and reject others.
 */

%{
 #include <stdio.h>
 #include <string.h>
 #include <stdlib.h>

 int yylex (void);
 void yyerror (const char *);

 int env[26] = {0};
%}

%token BRACE_OPEN BRACE_CLOSE

%%

s:
 | BRACE_OPEN s BRACE_CLOSE s;

%%

void yyerror (const char *s) {
  printf ("Unexpected syntax\n");
}

int main () {
  yyparse ();
	return 0;
}

#include "lex.yy.c"
