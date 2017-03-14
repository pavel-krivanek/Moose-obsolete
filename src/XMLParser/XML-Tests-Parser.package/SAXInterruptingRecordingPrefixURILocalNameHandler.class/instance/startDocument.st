handling - content
startDocument
	super startDocument.

	self interruptOn = #startDocument
		ifTrue: [self interruptParsing].