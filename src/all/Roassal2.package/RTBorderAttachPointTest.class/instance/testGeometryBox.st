tests
testGeometryBox
	el := RTBox new
		width: 20;
		height: 30;
		element.
	el translateTo: 20 @ 30.
	self
		assert: (attachPoint geometryFor: el)
		equals: (GRectangle origin: 10 @ 15 corner: 30 @ 45)