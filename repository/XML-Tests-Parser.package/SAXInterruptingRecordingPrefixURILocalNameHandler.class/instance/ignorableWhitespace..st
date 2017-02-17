handling - content
ignorableWhitespace: aString
	super ignorableWhitespace: aString.

	self interruptOn = #ignorableWhitespace:
		ifTrue: [self interruptParsing].