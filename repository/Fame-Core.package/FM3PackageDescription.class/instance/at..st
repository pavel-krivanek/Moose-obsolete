accessing-query
at: aString
	aString isSymbol ifTrue: [ self error ].
	^ self classNamed: aString