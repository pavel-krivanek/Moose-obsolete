*Moose-RoassalPaintings
viewHierarchyOn: view
	view shape label text: #name.
	view nodes: self.
	view shape orthoHorizontalLine color: Color veryLightGray.
	view edges connectFrom: #belongsTo.
	view layout horizontalTree layered