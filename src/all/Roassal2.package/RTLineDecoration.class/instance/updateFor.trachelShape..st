hooks
updateFor: edge trachelShape: trachelShape
	| f |
	f := attachPoint startingPointOf: edge.
	(edge shape class = RTArcLine and: [ attachPoint class = RTBorderAttachPoint ])
		ifTrue:
			[ f := attachPoint
				attachPointFor: edge
				from: (edge to encompassingRectangle expandBy: 1)
				to: edge to encompassingRectangle ].
	line ~= nil ifTrue: [ | tShape |
		tShape := edge trachelShape shapes first.
		(tShape class = TRBezierShape or: [ tShape class = TRBezier3Shape ])
			ifTrue: [ f := tShape points at: tShape points size - 1 ] ].
	trachelShape from: f.
	trachelShape to: (attachPoint endingPointOf: edge).
	trachelShape color: (self colorFor: edge).
	trachelShape width: (self widthFor: edge).
	trachelShape percentage: (self percentageFor: edge).
	trachelShape resetPath.