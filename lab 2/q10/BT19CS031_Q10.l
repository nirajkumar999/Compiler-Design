%{
int flag=0;
%}
%%
(" "[aA][nN][Dd]" ")|(" "[oO][Rr]" ")|(" "[bB][uU][tT]" ")|(" "[bB][Ee][Cc][Aa][Uu][Ss][Ee]" ") {flag++;}
.;
%%
int yywrap()
{
return 1;
}
int main()
{
printf("enter a sentence \n");
yylex();
if(flag==1)
printf("\ncompound sentence \n");
else
printf("\nsimple sentence \n");
return 0;
}
