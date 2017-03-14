parsing
parseOn: aPPContext
	| element |
	^ (element := parser parseOn: aPPContext) isPetitFailure
		ifFalse: [ block value: element ]
		ifTrue: [ element ]