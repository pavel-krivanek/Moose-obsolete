hooks
trachelShapeFor: anEdge
	| lineTrachelShape headTrachelShape shape |
	(self isSelfLoopAllowedFor: anEdge) ifFalse: [ 
		^ TRNoShape instance ].
	lineTrachelShape := self trachelShapeClass new.
	self updateLineFor: anEdge trachelShape: lineTrachelShape.
	headTrachelShape := head trachelShapeFor: anEdge.
	shape := TRCompositeShape new
		addShape: lineTrachelShape;
		addShape: headTrachelShape;
		yourself.
	^ shape