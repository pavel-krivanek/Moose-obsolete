converting
asciiToUTF16LE: anASCIIString
	^ String streamContents: [:stream |
		anASCIIString do: [:each |
			stream
				nextPut: each;
				nextPut: 0 asCharacter]]