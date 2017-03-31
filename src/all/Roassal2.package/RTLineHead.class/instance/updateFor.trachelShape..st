hooks
updateFor: edge trachelShape: trachelShape
	| fromPoint |
	fromPoint := attachPoint startingPointOf: edge.
	line
		ifNotNil: [ 
			| lineShape |
			lineShape := edge trachelShape.
			lineShape class = TRBezierShape
				ifTrue: [ fromPoint := lineShape points allButLast last ] ].
	edge shape class = RTArcLine & (attachPoint class = RTBorderAttachPoint)
		ifTrue:
			[ fromPoint := attachPoint
				attachPointFor: edge
				from: (edge to encompassingRectangle expandBy: 1)
				to: edge to encompassingRectangle ].
	self updateFor: edge trachelShape: trachelShape from: fromPoint