private
controlPointsFor: anEdge
	| x1 y1 x2 y2 |
	(layout = #leftward or: [ layout = #rightward ])
		ifTrue: [ 
			x1 := x2 := (anEdge from position x + anEdge to position x) / 2.
			y1 := anEdge from position y.
			y2 := anEdge to position y ]
		ifFalse: [ 
			y1 := y2 := (anEdge from position y + anEdge to position y) / 2.
			x1 := anEdge from position x.
			x2 := anEdge to position x] .
	
	^ Array with: x1@y1 with: x2@y2.