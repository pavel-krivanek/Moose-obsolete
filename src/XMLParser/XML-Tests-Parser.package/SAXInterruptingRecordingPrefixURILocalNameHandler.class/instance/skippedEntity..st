handling - content
skippedEntity: anEntityName
	super skippedEntity: anEntityName.

	self interruptOn = #skippedEntity:
		ifTrue: [self interruptParsing].