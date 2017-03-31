comparing
intersectPolygon: polygon
	"^ self intersectRectangle: polygon encompasingRectangle."
	| intersections vertices next intersection |
	intersections := Set new.
	vertices := polygon vertices.
	vertices doWithIndex: [ :current :i | 
		next := i = vertices size
			ifTrue: [ vertices first ]
			ifFalse: [ vertices at: i+1 ].
		intersection := self finiteLinesIntersectFrom: current to: next.
		intersection 
			ifNotNil: [ intersections add: intersection ] ].
	^ intersections