%option main
letter			[A-Za-z] 
digit			[0-9] 
alphanumeric	({letter}|{digit})
int				{digit}+ 
SEMICOLON		\;
LB			\{ 
RB			\} 
LP			\( 
RP			\) 
LS			\[ 
RS			\]
if			if
else		else
elseif 		elseif
while		while
for			for
assgnop		\= 
return		return
void		void
bool_type	bool
OR			\|\|
AND			\&\&
NOT			\!  
IMPLIES     \=\=\>
DOUBLE_IMPLIES  \<\=\=\>
EQUAL			\=\=
NEQUAL			\!\=
COMMA 			\,
symbol			[\40-\176]
comment			\#\#\#(.)*\#\#\#
chars			\"{symbol}*\"
char 			\'.\'
bool_const		(true)|(false) 
IN			in\((.)*\)
OUT			out
IDENTIFIER {letter}{alphanumeric}*
func 		func 
loop		loop
NEWLINE		\n
TAB	\t
QUOTE       \"
%%
{bool_const}			printf(" BOOL_CONST");
{digit}			printf(" DIGIT");
{chars}			printf(" CHARS");
{int}			printf(" INT");
{SEMICOLON}		printf(" SEMICOLON");
{LB}			printf(" LB");
{RB}			printf(" RB");
{LP}			printf(" LP");
{RP}			printf(" RP");
{LS}			printf(" LS");
{RS}			printf(" RS");
{if}			printf(" IF");
{else}			printf(" ELSE");
{while}			printf(" WHILE");
{elseif}			printf(" ELSEIF");
{for}			printf(" FOR");
{assgnop}			printf(" ASSGNOP");
{return}			printf(" RETURN");
{bool_type}		printf(" BOOL_TYPE");
{NEWLINE}		printf(" NEWLINE");
{TAB}			printf(" TAB");
{AND}			printf(" LAND");
{NOT}			printf(" NOT");
{IMPLIES}		printf(" IMPLIES");
{DOUBLE_IMPLIES} printf(" DOUBLE_IMPLIES");
{EQUAL}			printf(" EQUAL");
{NEQUAL}		printf(" NEQUAL");
{COMMA} 		printf(" COMMA");
{comment}		printf(" COMMENT");
{OR}			printf(" OR");
{IN}			printf(" INPUT");
{OUT}			printf(" OUTPUT");
{void}			printf(" VOID");
{func}			printf(" FUNC");
{loop}			printf(" LOOP");
{IDENTIFIER}    printf(" IDENTIFIER");
{char}			printf(" CHAR");
