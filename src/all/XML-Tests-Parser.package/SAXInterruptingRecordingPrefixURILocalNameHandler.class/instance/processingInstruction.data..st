handling - content
processingInstruction: aTargetString data: aDataString
	super
		processingInstruction: aTargetString
		data: aDataString.

	self interruptOn = #processingInstruction:data:
		ifTrue: [self interruptParsing].