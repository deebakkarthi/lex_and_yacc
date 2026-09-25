%{
/*Simplest lex program*/
%}

%%
.|\n	ECHO;
%%

int main()
{
	yylex();
}
