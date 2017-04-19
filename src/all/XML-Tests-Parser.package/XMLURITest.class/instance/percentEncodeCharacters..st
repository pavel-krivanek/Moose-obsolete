converting
percentEncodeCharacters: aCharacterCollection
	^ String streamContents: [:stream |
		aCharacterCollection do: [:each |
			stream nextPutAll:
				(self percentEncodeCharacter: each)]]