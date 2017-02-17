public
trachelShapeFor: anEdge
	| lineTrachelShape headStartTrachelShape headEndTrachelShape |
	(self isSelfLoopAllowedFor: anEdge) ifFalse: [ 
		^ TRNoShape instance ].
	lineTrachelShape := line trachelShapeFor: anEdge.
	headStartTrachelShape := headStart trachelShapeFor: anEdge.
	headEndTrachelShape := headEnd trachelShapeFor: anEdge.
	^ TRCompositeShape new 
			addShape: lineTrachelShape; 
			addShape: headStartTrachelShape; 
			addShape: headEndTrachelShape;
			yourself
	