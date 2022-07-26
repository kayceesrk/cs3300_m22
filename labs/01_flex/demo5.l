%{
int count = 0;
%}

UPPERCASE_LETTER [A-Z]

%%
{UPPERCASE_LETTER} { printf("%s upper-case letter\n", yytext);
                     count++; }
.     						 { printf("%s not a capital letter\n", yytext); }
\n    						 { return 0; }
<<eof>> 					 { return -1; }
%%

int main() {
  while (yylex() == 0) {
		printf("\nNumber of upper-case letters in the given input is %d\n", count);
	}
	return 0;
}
