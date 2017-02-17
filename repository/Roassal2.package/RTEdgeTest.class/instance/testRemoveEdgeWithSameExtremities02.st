tests
testRemoveEdgeWithSameExtremities02

	| v e l |
	v := RTView new.
	e := RTBox element.

	l := RTLine edgeFrom: e to: e.
	v add: e.
	v add: l.
	self assert: (e connectedEdges includes: l).
	self assert: e connectedEdges size equals: 1.
