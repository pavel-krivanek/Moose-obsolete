parsing
parseOn: aPPContext
	^ (block value: aPPContext) 
		ifTrue: [ parser parseOn: aPPContext ]
		ifFalse: [ PPFailure message: block asString, ' was not evaluated to true.' context: aPPContext ]