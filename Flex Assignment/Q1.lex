%{
#include <stdio.h>
%}

DIGIT     [0-9]
WHITESPACE [ \t\n]
OPERATOR  [+*/-]

%%

{DIGIT}+ {
    printf("Number: %s\n", yytext);
}

{OPERATOR} {
    printf("Operator: %s\n", yytext);
}

{WHITESPACE} {
    // Ignore whitespace
}

. {
    printf("Invalid character: %s\n", yytext);
}

%%

int main() {
    yylex();
    return 0;
}

