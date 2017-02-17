handling - lexical
startCData
	super startCData.

	self interruptOn = #startCData
		ifTrue: [self interruptParsing].