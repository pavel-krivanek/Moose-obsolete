public
trachelShapeFor: anEdge
	| fromPoint |
	fromPoint := attachPoint startingPointOf: anEdge.
	line
		ifNotNil:
			[ | lineShape |
			lineShape := line trachelShapeFor: anEdge.
			lineShape class = TRBezierShape
				ifTrue: [ fromPoint := lineShape points allButLast last ] ].
	anEdge shape class = RTArcLine & (attachPoint class = RTBorderAttachPoint)
		ifTrue:
			[ fromPoint := attachPoint
				attachPointFor: anEdge
				from: (anEdge to encompassingRectangle expandBy: 10)
				to: anEdge to encompassingRectangle ].
	^ self trachelShapeFor: anEdge from: fromPoint