/*Lex Program to get the number of characters, 
  blanks and words in a text */


/* Definitions 
   Declaration Section */
%{
#include<stdio.h>
#include<string.h>
#include<conio.h>
int ch=0, bl=0, ln=0, wr=0; /* global variables */
%}


/* Rules Section 
   Translation Rules */
%%
[\n] {ln++;wr++;}
[\t] {bl++;wr++;}
[" "] {bl++;wr++;}
[^\n\t] {ch++;}


%%

/* User Subroutines 
   Auxiliary Procedure Section */

int yywrap()
{
    return 1;
}
int main()
{
printf("\nEnter the String : ");
yylex();
printf("\n Other character excluding spaces = %d ",ch);
printf("\n Blanks = %d",bl);
printf("\n Lines = %d",ln); 
printf("\n Words = %d",wr);
printf("\n Total Character count including all spaces = %d",ch+bl);
getch();
return 0;
}