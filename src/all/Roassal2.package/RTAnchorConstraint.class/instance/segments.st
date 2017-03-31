accessing
segments
	(edge shape className = #DCRTConnection)
		ifTrue: [ ^ RTPolyLineSegment withAll: (self connectionSegmentsFor: edge) ].
	(edge shape isKindOf: RTBezierLine)
		ifTrue: [ ^ self notYetImplemented ].
	^ RTPolyLineSegment with: (self lineSegmentFor: edge)