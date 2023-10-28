%{
#include <stdio.h>
%}

%option noyywrap

%%
"auto"|"break"|"case"|"char"|"const"|"continue"|"default"|"do"|"double"|"else"|"enum"|"extern"|"float"|"for"|"goto"|"if"|"int"|"long"|"register"|"return"|"short"|"signed"|"sizeof"|"static"|"struct"|"switch"|"typedef"|"union"|"unsigned"|"void"|"volatile"|"while" {
    printf("Keyword: %s\n", yytext);
}

[0-9]+ {
    printf("Number: %s\n", yytext);
}

[ \t\n] {
    // Ignore whitespace
}

[a-zA-Z_][a-zA-Z0-9_]* {
    printf("Identifier: %s\n", yytext);
}

[+\-*/=] {
    printf("Operator: %s\n", yytext);
}

[\(\)\{\}\[\];,.&!~<>?|] {
    printf("Operator: %s\n", yytext);
}

. {
    printf("Invalid character: %s\n", yytext);
}

%%

int main() {
    yylex();
    return 0;
}

