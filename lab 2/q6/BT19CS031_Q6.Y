%{
#include<stdio.h>
#include<stdlib.h>
%}
%token NUMBER ID NL
%left '+' '-' %left '*' '/'
%%
stmt: exp NL {printf("\nValid expression\n"); exit(0);}
;
exp: exp '+' exp | exp '-' exp | exp '*' exp | exp '/' exp | '(' exp ')' | ID | NUMBER
;
%%
int yyerror(char *msg)
{
printf("\nInvalid expression\n");
exit(0);
}
int yywrap(){
return 1;
}
int main()
{
printf("\nEnter the expression: \n");
yyparse();
return 0;
}