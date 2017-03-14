as yet unclassified
parseOn: aPPContext
	| waterPosition result position |
	
	position := aPPContext position.
	(aPPContext waterPosition == aPPContext position) ifFalse: [ 
		waterPosition := aPPContext waterPosition.
		aPPContext waterPosition: aPPContext position.

		result := parser parseOn: aPPContext.
		[result isPetitFailure] whileTrue: [
			aPPContext atEnd ifTrue: [ 
				aPPContext waterPosition: waterPosition.
				^ PPFailure message: 'anchor did not found' at: aPPContext position ].
			aPPContext waterToken.
			waterToken parseOn: aPPContext.
			aPPContext waterPosition: aPPContext position.
			result := parser parseOn: aPPContext.
		].
		
		aPPContext waterPosition: waterPosition.
	].
	
	^ aPPContext stream collection copyFrom: position + 1 to: aPPContext position