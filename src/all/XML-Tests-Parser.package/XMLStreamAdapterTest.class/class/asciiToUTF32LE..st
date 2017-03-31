converting
asciiToUTF32LE: anASCIIString
	^ String streamContents: [:stream |
		anASCIIString do: [:each |
			stream
				nextPut: each;
				nextPut: 0 asCharacter;
				nextPut: 0 asCharacter;
				nextPut: 0 asCharacter]]