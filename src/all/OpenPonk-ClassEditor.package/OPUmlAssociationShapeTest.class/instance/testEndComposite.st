tests
testEndComposite
	ownedComment aggregation: OPUMLAggregationKind composite.
	self
		assert: (OPUmlAssociationShape new decoratorFor: owningElement)
		equals: OPUmlEdgeMarkers filledDiamond