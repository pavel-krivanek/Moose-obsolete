handling - lexical
endDTD
	super endDTD.

	self interruptOn = #endDTD
		ifTrue: [self interruptParsing].