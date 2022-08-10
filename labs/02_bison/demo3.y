/* Demo3

	 Evaluator of arithmetic expressions with support for single character
	 variables.
*/


%{
 #include <stdio.h>
 #include <string.h>
 #include <stdlib.h>

 int yylex (void);
 void yyerror (const char *);

 int env[26] = {0};
%}

%union {
  int num;
  char* id;
}

%token <num> NUM
%token ADD EOL ASSIGN
%token <id> ID

%type <num> expr0 expr1 expr2
/* We are now assigning types for non-terminals */

%%

/*
<goal> -> <lines>

<lines> -> ϵ
         | <lines> <expr0> EOL
				 | <lines> EOL

<expr0> -> ID ASSIGN <expr1>

<expr1> -> <expr1> ADD <term2>
         | <expr2>

<expr2> -> NUM | ID
*/


goal: lines
;

lines:                			/* empty string */
		 | lines expr0 EOL 			/* non-empty lines */
//$$   $1    $2    $3
{ printf ("Answer: %d\n", $2); }
		 | lines EOL 						/* empty line with only newline character */
;

expr0: ID ASSIGN expr1
{ env[$1[0] - 'a'] = $3;
  $$ = 0; }
		 | expr1 { $$ = $1; }
;

expr1: expr1 ADD expr2 { $$ = $1 + $3; }
		 | expr2 { $$ = $1; }
;

expr2: NUM { $$ = $1; }
		 | ID { $$ = env[$1[0] - 'a']; }
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
