roassal
viewConstellationOn: view
	| multipliedEntities  |
	multipliedEntities := (self flatCollect: #multiplyingEntities) asSet.
	view interaction popupText: [:each | each multiplyingEntities collect: #name ].
	view shape rectangle size: 1.
	view nodes: self.
	view shape rectangle 
		fillColor: Color lightGray;
		size: 10.
	view nodes: multipliedEntities.
	view shape line color: Color veryVeryLightGray.
	view edges source: self connectFrom: #yourself toAll: #multiplyingEntities.
	view layout force "graphvizLayout circo"