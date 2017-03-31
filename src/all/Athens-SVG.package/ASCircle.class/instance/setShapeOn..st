as yet unclassified
setShapeOn: aCanvas
	| circle |

	circle := aCanvas createPath: [:builder |
		builder 
			absolute;
			moveTo: (cx - r @ cy);
			cwArcTo: (cx + r @ cy )  angle: 180 degreesToRadians;
			cwArcTo: (cx - r @ cy)  angle: 180 degreesToRadians
		].

	aCanvas setShape: circle.
