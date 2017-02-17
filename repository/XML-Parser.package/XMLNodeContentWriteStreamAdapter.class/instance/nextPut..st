accessing
nextPut: aCharacter
	self insertSpaceBefore: aCharacter.
	stream nextPut: aCharacter.
	^ lastChar := aCharacter.