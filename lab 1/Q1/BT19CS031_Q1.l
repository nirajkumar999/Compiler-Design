/* Lex Program To count the number of characters and lines 
              in a text file */


/* Definitions 
   Declaration Section */
%{
#include<stdio.h>
#include<conio.h>
int n_char = 0 , n_lines = 0;  /* Global Variables */ 
%}


/* Rules Section 
   Translation Rules */
%%
\n {++n_lines, ++n_char;}
. ++n_char;



%%
/* User Subroutines 
   Auxiliary Procedure Section */ 
int yywrap()
{
return 1;
}

int main(int argc[],char *argv[])
{
yyin=fopen("abc.txt","r");
yylex();
printf("\n No. of characters: %d",n_char);
printf("\n No of lines: %d \n",n_lines);
getch();
return 0;
}
