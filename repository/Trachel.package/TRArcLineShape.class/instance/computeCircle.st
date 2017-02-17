private
computeCircle
	| srcMidNormal dstMidNormal |
	line length = 0
		ifTrue: [ ^ self ].
	normal := self normalFor: line.
	alpha := (distance abs / (line length / 2)) arcTan * 2.
	srcMidNormal := self normalFor: (RTLineSegment from: line from to: normal to).
	dstMidNormal := self normalFor: (RTLineSegment from: line to to: normal to).
	center := srcMidNormal intersectLines: dstMidNormal.
	radius := center dist: line from