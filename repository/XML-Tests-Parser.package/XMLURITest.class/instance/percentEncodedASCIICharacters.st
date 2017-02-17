accessing
percentEncodedASCIICharacters
	percentEncodedASCIICharacters ifNil: [
		percentEncodedASCIICharacters :=
			String streamContents: [:stream |
				self asciiCharacters do: [:each |
					stream nextPutAll:
						(self percentEncodeCharacter: each)]]].
	^ percentEncodedASCIICharacters.