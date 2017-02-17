as yet unclassified
comment: aString
	aString ifNotNil: [ comment := (aString collect: #asciiValue) asByteArray asString ].
	aString ifNil: [ comment := '' ]