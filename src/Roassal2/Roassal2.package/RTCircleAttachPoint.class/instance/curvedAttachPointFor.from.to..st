private
curvedAttachPointFor: anEdge from: fromRect to: toRect
	| line normal alpha distance srcMidNormal dstMidNormal center radius srcCircle arcCircle |
	srcCircle := RTCircleGeometry center: fromRect center radius: fromRect width / 2.
	line := RTLineSegment from: anEdge from position to: anEdge to position.
	line length = 0
		ifTrue: [ ^ srcCircle center + (0 @ srcCircle radius) ].
	distance := anEdge shape distanceFor: anEdge.
	normal := self normalFor: line sized: distance.
	alpha := (distance abs / (line length / 2)) arcTan * 2.
	srcMidNormal := self
		normalFor: (RTLineSegment from: line from to: normal to)
		sized: distance.
	dstMidNormal := self
		normalFor: (RTLineSegment from: line to to: normal to)
		sized: distance.
	center := srcMidNormal intersectLines: dstMidNormal.
	radius := center dist: line from.
	arcCircle := RTCircleGeometry center: center radius: radius.
	^ (srcCircle intersectCircle: arcCircle) detectMin: [ :each | each dist: normal to ]