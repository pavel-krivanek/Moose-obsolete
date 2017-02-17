comparing
intersectLineSegment: aLine
	(self corners flatCollect: [ :each | aLine intersectCircleArc: each ])
		ifNotEmpty: [ :col | ^ col ].
	^ aLine intersectRectangle: self rectangle