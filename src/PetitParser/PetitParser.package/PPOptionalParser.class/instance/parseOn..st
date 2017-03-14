parsing
parseOn: aPPContext
	| element |
	element := parser parseOn: aPPContext.
	^ element isPetitFailure ifFalse: [ element ]