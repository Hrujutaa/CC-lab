%{
#include <stdio.h>
int yyerror(char *s);
int yylex(void);
%}
%token ID INT FLOAT CHAR DOUBLE WHILE

%%
input: I W {printf("While loop executed\n");};

W: WHILE '(' ID '<' ID ')' '{' '}';
I: INT ID ',' ID ';'
 | FLOAT ID ',' ID ';'
 | CHAR ID ',' ID ';'
 | DOUBLE ID ',' ID ';'
 ;
 

%%
int yyerror(char *s){
	printf("invalid loop");
	return 0;
	}
int main(){
	printf("enter: ");
	yyparse();
	return 0;
}

