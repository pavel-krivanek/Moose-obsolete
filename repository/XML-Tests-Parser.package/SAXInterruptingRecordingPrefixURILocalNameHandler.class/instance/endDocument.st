handling - content
endDocument
	super endDocument.

	self interruptOn = #endDocument
		ifTrue: [self interruptParsing].