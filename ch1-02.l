%{
/*
Recognize the following set of words

is	am	are	were
was	be	being	been
do	does	did	will
would	should	can	could
has	have	had	go

*/
%}
%%

[\t ]+	{/*Skip whitespace*/;}

is |
am |
are |
were |
was |
be |
being |
been |
do |
does |
did |
will |
would |
should |
can |
could |
has |
have |
had |
go	{ printf("VERB: %s\n", yytext); }

[a-zA-Z]+	{ printf("NOT A VERB: %s\n", yytext); }

[.|\n]	{/*Skip other stuff*/;}
%%

int main()
{
	yylex();

	return 0;
}
