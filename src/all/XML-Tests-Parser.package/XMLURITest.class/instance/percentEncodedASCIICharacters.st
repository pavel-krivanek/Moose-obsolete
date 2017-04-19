accessing
percentEncodedASCIICharacters
	^ percentEncodedASCIICharacters
		ifNil: [
			percentEncodedASCIICharacters :=
				self percentEncodeCharacters: self asciiCharacters]