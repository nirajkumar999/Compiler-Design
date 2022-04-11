/* Lex Program To count the longest word in a text file */


/* Definitions 
   Declaration Section */
%{ 
#include<stdio.h>
#include<string.h>
#include<conio.h>
int longest=0;
char longword[60]; /* Global Variables */ 
%}


/* Rules Section 
   Translation Rules */
%%
[a-zA-Z]+ {if(yyleng>longest){
            longest=yyleng;
            strcpy(longword,yytext);
              }
            }
.
\n  ;


%%
/* User Subroutines 
   Auxiliary Procedure Section */ 

int yywrap()
{
return 1;
}

int main(void) 
{
yyin=fopen("abc.txt","r");
yylex();
printf("\n The longest word was \"%s\",which was %d characters long.\n"
,longword, longest);

getch();
return 0;
}
