instance creation
forString: aString
	^ self for: (PPRegexParser parse: aString)