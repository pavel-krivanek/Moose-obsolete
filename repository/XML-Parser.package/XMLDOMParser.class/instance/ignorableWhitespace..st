handling - content
ignorableWhitespace: aString
	self preservesIgnorableWhitespace
		ifTrue: [self characters: aString]