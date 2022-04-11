%{
 #include "BT19CS031_Q8.tab.h"
%}
%%
[a-zA-z_] {return ALPHA;}
[0-9]+ {return NUMBER;}
"\n" { return ENTER;}
. {return ER;}
%%
int yywrap()
{
return 1;
}