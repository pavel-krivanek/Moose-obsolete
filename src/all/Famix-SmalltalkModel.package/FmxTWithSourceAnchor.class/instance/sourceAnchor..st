accessing
sourceAnchor: aSourceAnchor
	sourceAnchor := aSourceAnchor.
	aSourceAnchor element = self ifFalse: [ aSourceAnchor element: self ]