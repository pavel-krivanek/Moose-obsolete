*Moose-RoassalPaintings
viewDuplicationComplexityOn: view
	self viewSimpleSystemComplexityOn: view.
	view shape shape: (RTBezierLine new color: Color red).
	view interaction popupText: [ :each | each duplicationText ].
	RTEdgeBuilder new
		view: view view;
		objects: self mooseModel allDuplications;
		connectFrom: [ :each | each referenceCode entity ]
			to: [ :each | each duplicateCode entity ]