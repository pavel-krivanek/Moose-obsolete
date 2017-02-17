*Moose-RoassalPaintings
viewWithinOverallHierarchyOn: view 
	view shape label
		text: #name;
		color: [:each | (self includes: each) ifTrue: [Color black] ifFalse: [Color gray] ] .
	view nodes: (self flatCollectAsSet: #withAllParentScopes).
	view shape line color: (Color gray alpha: 0.2).
	view edges connectFrom: #parentScope.
	view layout cluster.
	view view pushBackEdges