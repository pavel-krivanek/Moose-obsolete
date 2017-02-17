grammar
attributeValue
	"[10]   	AttValue	   ::=   	'""' ([^<&""] | Reference)* '""' |  ""'"" ([^<&'] | Reference)* "

	^ ($" asParser , $" asParser negate star flatten , $" asParser) 
	/ ($' asParser , $' asParser negate star flatten , $' asParser) 
		==> #second