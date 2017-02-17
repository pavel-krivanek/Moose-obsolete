handling - lexical
comment: aString
	super comment: aString.

	self interruptOn = #comment:
		ifTrue: [self interruptParsing].