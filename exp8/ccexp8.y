%{
#include <stdio.h>
#include <stdlib.h>
int yylex(void);
void yyerror(char *s);
%}

%token NUMBER

%%
stmt: stmt expr '\n'   { printf("Result: %d", $2); }
    |
    ;

expr:
      NUMBER            { $$ = $1; }
    | expr expr '+'     { $$ = $1 + $2; }
    | expr expr '*'     { $$ = $1 * $2; }
    ;

%%

void yyerror(char *s)
{
    printf("Error");
}

int main()
{
    yyparse();
    return 0;
}

