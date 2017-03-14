*Moose-RoassalPaintings
viewSystemComplexityOn: view

	view shape rectangle.
	view nodes: self forEach: [:p|
		p localClassesGroup isEmpty ifFalse: [
			p localClassesGroup viewSimpleSystemComplexityOn: view ] ].
	view shape orthoVerticalLine.
	view 
		edges
		connectFrom: #yourself 
		toAll: [:each | each queryIncomingInheritances atPackageScope ].
	view layout dominanceTree