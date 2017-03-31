accessing
isValidating: aBoolean
	aBoolean
		ifFalse: [self preservesIgnorableWhitespace: false].
	super isValidating: aBoolean.