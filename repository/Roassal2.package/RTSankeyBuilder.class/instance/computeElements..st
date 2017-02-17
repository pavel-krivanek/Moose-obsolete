as yet unclassified
computeElements: edges
	self computeEdgeValues.
	self computeElementBreadths.
	self computeElementDepths: edges.
	self computeLinkDepths.
	