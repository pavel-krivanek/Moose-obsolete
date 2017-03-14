tests
testGeometryRoundedBox
	el := RTRoundedBox new
		width: 80;
		height: 40;
		borderRadius: 10;
		element.
	self
		assert: (attachPoint geometryFor: el)
		equals:
			(GRoundedRectangle
				rectangle: (GRectangle origin: -40 @ -20 corner: 40 @ 20)
				borderRadius: 10)