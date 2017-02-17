tests
testHorizontalTwoElements
	e2 translateBy: 90 @ 0.
	
	self assert: (lineShape startingPointOf: edge) equals: 35 @ 0.
	self assert: (lineShape endingPointOf: edge) equals: 55 @ 0.