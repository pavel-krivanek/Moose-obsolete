accessing
nextPut: aCharacter
	streamConverter
		nextPut: aCharacter
		toStream: self.
	^ aCharacter.