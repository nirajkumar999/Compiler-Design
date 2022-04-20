%{ #include<iostream.h>
int count=0;
char ch=0;
%}
digit[0-9]
letter[a-zA-Z_]
%%

[ ][_a-zA-Z][_a-zA-Z0-9_]* {
    count++;
};
%%
int yywrap(){return 1;}
int main()
{
    printf("Enter expression: ");
    yylex();
    printf("count: %d \n",count);
    return 0;
} 