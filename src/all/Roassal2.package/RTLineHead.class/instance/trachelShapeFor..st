public
trachelShapeFor: anEdge
	| fromPoint |
	fromPoint := attachPoint startingPointOf: anEdge.
	line ifNotNil: [ | lineShape |
		lineShape := line trachelShapeFor: anEdge.
		lineShape class = TRBezierShape ifTrue: [ 
			fromPoint := lineShape points allButLast last ] ].
	
	anEdge shape class = RTArcLine & (attachPoint class = RTBorderAttachPoint) ifTrue: [
		fromPoint := (TRArcLineShape new 
			line: (RTLineSegment from: fromPoint to: (attachPoint endingPointOf: anEdge));
			distance: (anEdge shape distanceFor: anEdge)) normal to.
		].
	^ self trachelShapeFor: anEdge from: fromPoint