accessing
percentEncodedAlphaNumericCharacters
	^ percentEncodedAlphaNumericCharacters
		ifNil: [
			percentEncodedAlphaNumericCharacters :=
				self percentEncodeCharacters: self alphaNumericCharacters]