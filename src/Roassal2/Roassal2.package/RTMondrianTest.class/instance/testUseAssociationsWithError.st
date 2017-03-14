tests - edges
testUseAssociationsWithError

	b := RTMondrian new.
	b nodes: #(1 2 3).
	b edges
		useAssociation: 1 -> 5.
	b build.
	
	self assert: b view numberOfEdges equals: 0