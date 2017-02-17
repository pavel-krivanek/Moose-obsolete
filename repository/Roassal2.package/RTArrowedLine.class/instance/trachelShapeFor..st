public
trachelShapeFor: anEdge
	| lineTrachelShape headTrachelShape |
	^ (self isSelfLoopAllowedFor: anEdge) ifTrue: [ 
		lineTrachelShape := line trachelShapeFor: anEdge.
		headTrachelShape := head trachelShapeFor: anEdge.
		TRCompositeShape new 
			addShape: lineTrachelShape; 
			addShape: headTrachelShape; 
			yourself ]
		ifFalse: [ TRNoShape instance ].
	