public
points: points
	self assert: [ points size = 4 ] description: 'Only 3 points may be provided'.
	listOfPoints := points