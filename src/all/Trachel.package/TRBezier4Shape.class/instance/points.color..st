public
points: aListOfPoints color: aColor
	self assert: [ aListOfPoints size = 4 ] description: 'Only 3 points may be provided'.
	
	self points: aListOfPoints.
	self strokePaint: aColor.
	self color: aColor