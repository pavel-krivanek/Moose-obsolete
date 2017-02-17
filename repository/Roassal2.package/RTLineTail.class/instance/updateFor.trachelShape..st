hooks
updateFor: edge trachelShape: trachelShape
	| fromPoint |
	fromPoint := attachPoint endingPointOf: edge.
	line
		ifNotNil: [ 
			| lineShape |
			lineShape := edge trachelShape shapes first.
			lineShape class = TRBezierShape
				ifTrue: [ fromPoint := lineShape points second ] ].
	self updateFor: edge trachelShape: trachelShape from: fromPoint