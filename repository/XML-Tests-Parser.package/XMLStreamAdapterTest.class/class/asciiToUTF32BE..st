converting
asciiToUTF32BE: anASCIIString
	^ String streamContents: [:stream |
		anASCIIString do: [:each |
			stream
				nextPut: 0 asCharacter;
				nextPut: 0 asCharacter;
				nextPut: 0 asCharacter;
				nextPut: each]]