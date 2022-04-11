%{
#include<stdio.h>
%}
%token A B
%%
S:A S B
|
;
%%
int yywrap(){
return 1;
}
int main()
{
printf("Enter the string\n");
if(yyparse()==0)
{
printf("Valid string\n");
}
return 1;
}
yyerror(char *s)
{
printf("Invalid string\n");
}