drawing - helpers
computeCircleHeadPathFor: shape
	| vector r unit radius center endPoint |
	vector := shape to - shape from.
	r := vector r.
	r = 0
		ifTrue: [ ^ false ].
	unit := vector / r.
	radius := unit / 2 * shape mySize.
	endPoint := shape to - (vector * (1-shape percentage)).
	center := endPoint - radius.
	^  shape athensCanvas
		createPath: [ :builder | 
			builder
				absolute;
				moveTo: center + radius;
				ccwArcTo: center + radius leftRotated angle: 90 degreesToRadians;
				ccwArcTo: center - radius angle: 90 degreesToRadians;
				ccwArcTo: center - radius leftRotated angle: 90 degreesToRadians;
				ccwArcTo: center + radius angle: 90 degreesToRadians ]
	