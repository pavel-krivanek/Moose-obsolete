instance creation
forString: aString ignoreCase: aBoolean
	^ self for: (PPRegexParser parse: aString) ignoringCase: aBoolean