accessing
preservesIgnorableWhitespace: aBoolean
	(preservesIgnorableWhitespace := aBoolean)
		ifTrue: [self isValidating: true]