handling - lexical
endEntity: anEntityName
	super endEntity: anEntityName.

	self interruptOn = #endEntity:
		ifTrue: [self interruptParsing].