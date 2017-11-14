accessing
sourceAnchor: aSourceAnchor
	sourceAnchor := aSourceAnchor.
	
	sourceAnchor ifNil: [ ^ self ].
	aSourceAnchor element = self ifFalse: [ aSourceAnchor element: self ]