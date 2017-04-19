tokenizing
nextEntityName
	isInEntityReference
		ifTrue: [^ super nextEntityName]
		ifFalse: [| entityName |
			driver handleStartNamePosition: self currentPosition + 1.
			entityName := super nextEntityName.
			driver handleEndNamePosition: self currentPosition.
			^ entityName]