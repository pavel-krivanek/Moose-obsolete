accessing
unreservedCharacters
	^ unreservedCharacters
		ifNil: [unreservedCharacters := self alphaNumericCharacters, '-._~']