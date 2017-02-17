tests
testContinuousCircleAttachPoint
	shape withBorderAttachPoint.
	self 
		assert: (shape startingPointOf: edge) 
		equals: (el1 encompassingRectangle topRight 
					+ (0 @ (el1 encompassingRectangle extent y / 2)) asIntegerPoint).
	self 
		assert: ((shape endingPointOf: edge) 
					closeTo: (el2 encompassingRectangle topLeft 
					+ (0 @ (el2 encompassingRectangle extent y / 2)) asIntegerPoint)).