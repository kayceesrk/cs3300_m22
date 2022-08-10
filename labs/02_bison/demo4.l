WHITESPACE [ \t\n]

%%

"{" { return BRACE_OPEN; }
"}" { return BRACE_CLOSE; }

{WHITESPACE} { }
