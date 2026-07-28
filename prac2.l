%{
#include <stdio.h>
int count_cmt=0;
int count_id=0;
int count_line=0;
int count_space=0;
%}

%%
"//".* { count_cmt++;}
[ \t\n]* { count_space++;}
[a-z A-Z _][a-z A-Z 0-9 _]* { count_id++;}
"\n" {count_line++;}
%%

int main(){
	printf("Enter something: ");
	yylex();
	printf("frequency of comment is %d\n",count_cmt);
	printf("frequency of identifier is %d\n",count_id);
	printf("frequency of line is %d\n",count_line);
	printf("frequency of space is %d\n",count_space);
	return 0;
}
int yywrap(){
	return 1;
}
