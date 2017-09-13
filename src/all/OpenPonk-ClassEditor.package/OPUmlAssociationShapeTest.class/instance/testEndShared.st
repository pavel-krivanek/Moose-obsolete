tests
testEndShared
	ownedComment aggregation: OPUMLAggregationKind shared.
	self
		assert: (OPUmlAssociationShape new decoratorFor: owningElement)
		equals: OPUmlEdgeMarkers emptyDiamond