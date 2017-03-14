handling - content
characters: aString
	super characters: aString.

	self interruptOn = #characters:
		ifTrue: [self interruptParsing].