parsing
parseOn: aPPContext
	| memento result |
	memento := aPPContext remember.
	result := parser parseOn: aPPContext.
	

	((memento position == aPPContext position) and: [ result isPetitFailure not ]) ifTrue: [ 
		aPPContext restore: memento.
		^ PPFailure message: 'Epsilon parse not allowed' context: aPPContext
	].
	^ result