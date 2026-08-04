%{
#include <stdio.h>
int count_cmt = 0;
int keywrd_count=0;
int count_id = 0;
int count_line = 0;
int count_space = 0;
%}

%%
"//".*  { count_cmt++; }
int|float|char|if|else|double   { keywrd_count++;}
\n   { count_line++; }
[ \t]+    { count_space++; }
[a-zA-Z_][a-zA-Z0-9_]*  { count_id++; }
%%

int main()
{
    printf("Enter: ");
    yylex();

    printf("Frequency of comments: %d\n", count_cmt);
    printf("Frequency of identifiers: %d\n", count_id);
    printf("Frequency of lines: %d\n", count_line);
    printf("Frequency of spaces: %d\n", count_space);
	return 0;
}

int yywrap()
{
    return 1;
}
