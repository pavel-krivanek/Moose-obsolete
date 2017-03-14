tests
testRemoveEdgeWithSameExtremities

	| v e l |
	v := RTView new.
	e := RTBox element.

	l := RTLine edgeFrom: e to: e.
	v add: e.
	v add: l.
	
	e remove.

