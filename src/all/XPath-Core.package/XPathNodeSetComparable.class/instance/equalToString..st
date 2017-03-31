private
equalToString: aString
	^ value anySatisfy: [:each |
		each stringValue = aString]