grammar
comment
	"[15]   	Comment	   ::=   	'<!--' ((Char - '-') | ('-' (Char - '-')))* '-->'"

	^ '<!--' asParser ,  '-->' asParser negate star flatten , '-->' asParser ==> #second