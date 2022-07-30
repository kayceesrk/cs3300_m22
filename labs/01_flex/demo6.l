%{
#define STACK_SIZE 64
int stack[STACK_SIZE];
int sp = 0;

void push (int i) {
  if (sp == STACK_SIZE) {
	  printf ("stack overflow\n");
		exit (1);
	}
	stack[sp++] = i;
}

int pop () {
  if (sp == 0) {
	  printf ("stack underflow\n");
		exit (1);
	}
	return stack[--sp];
}

int get_final_result () {
  if (sp != 1) {
	  printf ("invalid infix expression\n");
		exit (1);
	}
	return pop ();
}
%}

DIGIT   [0-9]
INTEGER [+-]?{DIGIT}+

%%

{INTEGER} { push (atoi(yytext)); }

"+" { int i = pop (), j = pop ();
      push (i+j); }

"-" { int i = pop (), j = pop ();
      push (j - i); }

"*" { int i = pop (), j = pop ();
      push (i*j); }

"/" { int i = pop (), j = pop ();
      push (j/i); }

\n { return get_final_result (); }

<<eof>> { exit(0); }

[ ] /* ignore whitespace */

. { printf ("unexpected character: %s\n", yytext); exit(1); }

%%

int main () {
  while (1) {
	  int res = yylex ();
		printf ("result = %d\n", res);
	}
}
