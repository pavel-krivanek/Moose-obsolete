as yet unclassified
setShapeOn: aCanvas
	| circle |
	

	circle := aCanvas createPath: [:builder |
		builder 
			absolute;
			moveTo: (cx - rx @ cy);
			cwArcTo: (cx + rx @ cy )  angle: 180 degreesToRadians;
			cwArcTo: (cx - rx @ cy)  angle: 180 degreesToRadians
		].

	aCanvas setShape: circle.
