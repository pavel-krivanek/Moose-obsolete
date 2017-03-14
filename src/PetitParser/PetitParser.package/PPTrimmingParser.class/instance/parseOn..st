parsing
parseOn: aPPContext
	| memento element trimContext |
	memento := aPPContext remember.
	trimContext := aPPContext copy.
	[ (trimmer parseOn: trimContext) isPetitFailure ]
		whileFalse.
	element := parser parseOn: aPPContext.
	element isPetitFailure ifTrue: [
		aPPContext restore: memento.
		^ element ].
	[ (trimmer parseOn: trimContext) isPetitFailure ]
		whileFalse.
	^ element