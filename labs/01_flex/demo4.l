%{
int count = 0;
%}

%%
[A-Z] { printf("%s upper-case letter\n", yytext);
        count++; }
.     { printf("%s not a capital letter\n", yytext); }
\n    { return 0; }
%%

int main() {
  yylex();
	return 0;
}
