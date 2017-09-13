tests
testBothNavigable
	owningElement
		owningAssociation: nil;
		owningClass: comment.
	self
		assert: (OPUmlAssociationShape new decoratorFor: ownedComment)
		equals: OPUmlEdgeMarkers none.
	self
		assert: (OPUmlAssociationShape new decoratorFor: owningElement)
		equals: OPUmlEdgeMarkers none