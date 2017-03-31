rendering
updateFor: edge trachelShape: trachelShape
	| points |
	trachelShape isNil
		ifTrue: [ ^ self ].
	points := edge from = edge to
		ifTrue: [ self pointsForOneElement: edge ]
		ifFalse: [ self pointsFor: edge ].
	
	trachelShape points: points.
	trachelShape color: (self colorFor: edge).
	trachelShape width: (self widthFor: edge).
	trachelShape resetPath.
	^ trachelShape