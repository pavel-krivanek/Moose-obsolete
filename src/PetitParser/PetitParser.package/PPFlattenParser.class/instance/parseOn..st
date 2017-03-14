parsing
parseOn: aPPContext
	| start element |
	start := aPPContext position.
	element := parser parseOn: aPPContext.
	element isPetitFailure ifTrue: [ ^ element ].
	^ self on: aPPContext stream collection start: start + 1 stop: aPPContext position value: element