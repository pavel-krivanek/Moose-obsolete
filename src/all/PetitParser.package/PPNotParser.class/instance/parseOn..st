parsing
parseOn: aPPContext
	| element memento |
	memento := aPPContext remember.
	element := parser parseOn: aPPContext.
	aPPContext restore: memento.
	^ element isPetitFailure
		ifFalse: [ PPFailure message: '' context: aPPContext ]