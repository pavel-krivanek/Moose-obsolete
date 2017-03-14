accessing-query
at: aString
	aString isSymbol ifTrue: [ self error ].
	^ self attributeNamed: aString