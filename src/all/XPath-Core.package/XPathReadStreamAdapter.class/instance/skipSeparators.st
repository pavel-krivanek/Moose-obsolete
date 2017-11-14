positioning
skipSeparators
	"provides consistent cross-platform separator skipping with the XML set of
	separators, which the XPath spec uses for whitespace too:
		ExprWhitespace	   ::=   	S
		S	   ::=   	(#x20 | #x9 | #xD | #xA)+"
	[stream atEnd not
		and: [stream peek isXMLSeparator]]
		whileTrue: [stream next]