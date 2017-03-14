handling - lexical
endCData
	super endCData.

	self interruptOn = #endCData
		ifTrue: [self interruptParsing].