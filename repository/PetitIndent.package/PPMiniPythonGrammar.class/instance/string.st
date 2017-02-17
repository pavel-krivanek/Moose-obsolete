others
string
	| singleQuote doubleQuote sqString dqString |
	"this is far from complete,..."
	
	singleQuote := $' asParser.
	doubleQuote := $" asParser.
	
	sqString := singleQuote, ('\''' asParser / '\\' asParser / singleQuote negate) star, singleQuote.
	dqString := doubleQuote, ('\"' asParser / '\\' asParser / doubleQuote negate) star, doubleQuote.
	
	^ sqString / dqString 