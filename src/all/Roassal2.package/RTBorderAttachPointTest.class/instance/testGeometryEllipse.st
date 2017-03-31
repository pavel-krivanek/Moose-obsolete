tests
testGeometryEllipse
	el := RTEllipse new
		width: 20;
		height: 30;
		element.
	el translateTo: 20 @ 30.
	self assert: (attachPoint geometryFor: el) equals: (GEllipse center: 20 @ 30 a: 10 b: 15)