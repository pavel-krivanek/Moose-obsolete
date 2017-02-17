others
onelineString
	| singleQuote doubleQuote sqString dqString |
	"this is far from complete,..."
	
	singleQuote := $' asParser.
	doubleQuote := $" asParser.
	
	sqString := singleQuote, (newline not, ('\''' asParser / singleQuote negate)) star, singleQuote.
	dqString := doubleQuote, (newline not, ('\"' asParser / doubleQuote negate)) star, doubleQuote.
	
	^ sqString / dqString 