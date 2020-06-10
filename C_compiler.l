%{
    #include "C_compiler.tab.h"
%}
letter [a-zA-Z]
num [0-9]
underscore [_]
vname ({letter}|{underscore})({letter}|{num})*
%%
void	{return VOID;}
int	{return INT;}
main	{return MAIN;}
float	{return FLOAT;}
char	{return CHAR;}
for	{return FOR;}
while	{return WHILE;}
if	{return IF;}
else	{return ELSE;}
switch	{return SWITCH;}
case	{return CASE;}
break	{return BREAK;}
default	{return DEFAULT;}
"scanf"	{return SCANF;}
"printf"	{return PRINTF;}
"<="|">="|"<"|">"|"!="|"=="	{return OPERATOR;}
"="	{return ASSIGNMENT;}
"++"	{return INC;}
"--"	{return DEC;}
"{"	{ return OPENCURLY;}
"}"	{ return CLOSECURLY;}
"("	{ return OPENBRACES;}
")"	{ return CLOSEBRACES;}
"["	{return OPENBIGBRACES;}
"]"	{return CLOSEBIGBRACES;}
";"	{return SEMICOLON;}
":"	{return COLON;}
","	{return COMMA;}
letter	{return LETTER;}
"+"|"-"|"*"|"/"|"^"	{return ARITHMETIC;}
"%"	{return MOD;}
{vname}	{return VNAME;}
{num}+	{return NUMBER;}
{num}+.({num}+)	{return DECIMAL;}
" " 	{ return SPACE;}
\"[^\"\n]*\" {return STR;}
"&"	{return AND;}
[.]	{ECHO; yyerror("unexpected character");}
\n	{return NL;}
"#include<stdio.h>"|"#include<stdlib.h>"|"#include<math.h>"	{return LIBRARY;}
"#define"	{return DEFINE;}
%%
