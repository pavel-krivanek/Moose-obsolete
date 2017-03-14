utility
renderAxis
	| center yPlus yStart xStart |
	center := self centralPoint.
	self adjustXAxisIfNecessary.
	yStart := center x @ 0.
	xStart := 0 @ center y.
	withOrigin
		ifFalse: [ (0 between: minX and: maxX)
				ifFalse: [ yStart := 0 @ 0 ].
			(0 between: minY and: maxY)
				ifFalse: [ xStart := 0 @ 0 ] ].
	yPlus := (yOffset ifNil: [ 0 ]) negated @ 0.
	self axisYFrom: yStart + yPlus to: yStart + (0 @ extent y negated) + yPlus.
	self axisXFrom: xStart to: xStart + (extent x @ 0)