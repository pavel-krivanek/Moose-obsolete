tests
testEndOneNavigable
	self
		assert: (OPUmlAssociationShape new decoratorFor: ownedComment)
		equals: OPUmlEdgeMarkers simpleArrow.
	self
		assert: (OPUmlAssociationShape new decoratorFor: owningElement)
		equals: OPUmlEdgeMarkers none