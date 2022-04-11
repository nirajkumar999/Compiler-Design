%{#include<iostream.h>
int count=0;
char ch=0;
%}
digit[0-9]
letter[a-zA-Z_]
%%
{letter}({letter}|{digit})* {
count++;
}
%%
int yywrap(){
return 1;
}
int main()
{
yylex();
printf("count: %d",count);
return 0;
} 