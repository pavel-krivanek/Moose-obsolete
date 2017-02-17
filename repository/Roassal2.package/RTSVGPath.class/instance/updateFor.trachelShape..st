hooks
updateFor: anElement trachelShape: trShape
	trShape isNil
		ifTrue: [ ^ self ].
	trShape
		strokePaint: (borderColor rtValue: anElement);
		borderWidth: (borderWidth rtValue: anElement);
		fillColor: (self fillColor rtValue: anElement);
		rotateByDegrees: (self rotationFor: anElement);
		scaleBy: (self scaleFor: anElement).
		
	keepInOriginalPosition
		ifTrue: [ trShape path: (path rtValue: anElement) ]
		ifFalse: [ trShape centeredPath: (path rtValue: anElement) ].
	trShape resetPath