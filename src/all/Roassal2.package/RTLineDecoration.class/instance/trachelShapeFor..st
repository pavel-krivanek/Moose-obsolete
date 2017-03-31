public
trachelShapeFor: anEdge
	| f shape |
	f := attachPoint startingPointOf: anEdge.
	anEdge shape class = RTArcLine & (attachPoint class = RTBorderAttachPoint)
		ifTrue:
			[ f := attachPoint
				attachPointFor: anEdge
				from: (anEdge to encompassingRectangle expandBy: 1)
				to: anEdge to encompassingRectangle ].
	line ~= nil
		ifTrue:
			[ | tShape |
			tShape := line trachelShapeFor: anEdge.
			(tShape class = TRBezierShape or: [ tShape class = TRBezier3Shape ])
				ifTrue: [ f := tShape points allButLast last ] ].
	shape := self trachelShapeClass
		from: f
		to: (attachPoint endingPointOf: anEdge)
		width: (self widthFor: anEdge)
		size: (self mySize rtValue: anEdge)
		color: (self colorFor: anEdge)
		stroke: (self colorFor: anEdge).
	shape 
		baseSize: (baseSize rtValue: anEdge);
		percentage: (self percentageFor: anEdge).
	^ shape