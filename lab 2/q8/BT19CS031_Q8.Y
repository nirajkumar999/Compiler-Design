%{#include<stdio.h>
 #include<stdlib.h>
%}
%token ALPHA NUMBER ENTER ER
%%
var:v ENTER {printf("Valid Variable\n");exit(0);}
v:ALPHA exp1
exp1: ALPHA exp1
|NUMBER exp1
|;
%%
yyerror()
{
printf("Invalid Variable!");
}
int main()
{
printf("Enter the expression: ");
yyparse();
return 0;
}
