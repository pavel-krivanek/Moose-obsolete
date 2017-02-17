accessing
percentEncodedReservedCharacters
	percentEncodedReservedCharacters ifNil: [
		percentEncodedReservedCharacters :=
			String streamContents: [:stream |
				self reservedCharacters do: [:each |
					stream nextPutAll: (self percentEncodeCharacter: each)]]].
	^ percentEncodedReservedCharacters.