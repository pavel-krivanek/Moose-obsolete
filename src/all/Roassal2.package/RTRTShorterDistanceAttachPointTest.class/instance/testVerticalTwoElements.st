tests
testVerticalTwoElements
	e2 translateBy: 0 @ 50.
		
	self assert: (lineShape startingPointOf: edge) equals: 0 @ 15.
	self assert: (lineShape endingPointOf: edge) equals: 0 @ 35.