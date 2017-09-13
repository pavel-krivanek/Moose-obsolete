Roassal2 - manipulation
createRtEdge
	^ (Smalltalk hasClassNamed: #OPRTStyledConnection)
		ifTrue: [ self createConnection ]
		ifFalse: [ self createLine ]