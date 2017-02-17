rendering
updateLineFor: edge trachelShape: trachelShape
	trachelShape
		line:
			(RTLineSegment
				from: (attachPoint startingPointOf: edge)
				to: (attachPoint endingPointOf: edge)).
	trachelShape color: (self colorFor: edge).
	trachelShape width: (self widthFor: edge).
	trachelShape distance: (self distanceFor: edge).
	trachelShape resetPath.
	^ trachelShape