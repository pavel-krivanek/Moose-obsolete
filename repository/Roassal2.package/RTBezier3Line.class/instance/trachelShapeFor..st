hooks
trachelShapeFor: anEdge
	| trachelShape |
	(self isSelfLoopAllowedFor: anEdge) ifFalse: [ 
		^ nil ].
	trachelShape := (anEdge from = anEdge to
		ifTrue: [ TRBezierShape ]
		ifFalse: [ self trachelShapeClass ]) new.
	self updateFor: anEdge trachelShape: trachelShape.
	^ trachelShape