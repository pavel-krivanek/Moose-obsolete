handling - lexical
startEntity: anEntityName
	super startEntity: anEntityName.

	self interruptOn = #startEntity:
		ifTrue: [self interruptParsing].