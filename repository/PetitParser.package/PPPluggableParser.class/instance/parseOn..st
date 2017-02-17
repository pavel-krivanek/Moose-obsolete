parsing
parseOn: aPPContext
	| memento result |
	memento := aPPContext remember.
	result := block value: aPPContext.
	result isPetitFailure
		ifTrue: [ aPPContext restore: memento ].
	^ result