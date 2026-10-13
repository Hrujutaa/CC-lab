%{
#include <stdio.h>
#include "y.tab.h"
%}
%%
"int" {return INT;}
"float" {return FLOAT;}
"char" {return CHAR;}
"double" {return DOUBLE;}
"," {return ',';}
";" {return ';';}
"while" {return WHILE;}
"<" {return '<';}
"(" {return '(';}
")" {return ')';}
"{" {return '{';}
"}" {return '}';}
[a-z]+ {return ID;}
. {return yytext[0];}
[ \t]+ {}
%%
int yywrap(){
	return 1;
}
