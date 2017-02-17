converting
asciiToUTF16BE: anASCIIString
	^ String streamContents: [:stream |
		anASCIIString do: [:each |
			stream
				nextPut: 0 asCharacter;
				nextPut: each]]