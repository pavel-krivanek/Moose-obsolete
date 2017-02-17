public
generateUnitNgonPointsFitToSquare: sides rotation: rotationAngle
	| points |
	points := self generateUnitNgonPoints: sides rotation: rotationAngle.
	points := self fitPolygonToSquare: points.
	^ points.