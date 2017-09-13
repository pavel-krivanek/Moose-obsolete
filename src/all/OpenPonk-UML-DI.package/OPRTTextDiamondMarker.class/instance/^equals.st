comparing
= aMarker
	self species = aMarker species
		ifFalse: [ ^ false ].
	fillColor = aMarker fillColor
		ifFalse: [ ^ false ].
	text = aMarker text
		ifFalse: [ ^ false ].
	^ true