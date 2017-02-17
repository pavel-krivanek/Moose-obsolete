parsing
parseOn: aPPContext
	| memento result |
	memento := aPPContext remember.
	result := parser parseOn: aPPContext.
	(result isPetitFailure or: [ aPPContext stream atEnd ])
		ifTrue: [ ^ result ].
	result := PPFailure
		message: 'end of input expected'
		context: aPPContext.
	aPPContext restore: memento.
	^ result