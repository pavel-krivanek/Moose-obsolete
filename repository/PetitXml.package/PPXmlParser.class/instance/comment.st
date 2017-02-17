grammar
comment
	"[15]   	Comment	   ::=   	'<!--' ((Char - '-') | ('-' (Char - '-')))* '-->'"

	^ super comment ==> [ :node | PPXmlComment data: node ]