tests
testSimple7

	RTEdgeBuilder new
		view: view;
		useAssociation: 1 -> 2;
		useAssociation: 2 -> 3;
		useAssociation: 5 -> 6.

	self assert: view numberOfEdges equals: 3