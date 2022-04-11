/* Lex Program to find total number of 
   vowels and consonants in an input string */


/* Definitions 
   Declaration Section */   
%{
	#include<stdio.h>
	#include<conio.h>
	#include<string.h>
	int vow_count=0;
	int const_count =0; /* Global Variables */
%}


/* Rules Section 
   Translation Rules */
%%
[aeiouAEIOU] {vow_count++;}
[a-zA-Z] {const_count++;}


%%
/* User Subroutines 
   Auxiliary Procedure Section */ 

int yywrap()
{ 
	return 1;
}
int main()
{
	printf("Enter the string of vowels and consonents:");
	yylex();
	printf("Number of vowels are: %d\n", vow_count);
	printf("Number of consonants are: %d\n", const_count);
	getch();
	return 0;
}
