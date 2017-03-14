tests
testIncomingEdges

	| v e1 e2 |
	v := RTView new.
	e1 := RTBox element.
	e2 := RTBox element.
	v add: e1; add: e2.
	v add: (RTLine edgeFrom: e1 to: e2).
	
	self assert: (RTGroup with: e1) outgoingEdges size equals: 1. 
	self assert: (RTGroup with: e1) incomingEdges size equals: 0.
	
	self assert: (RTGroup with: e2) incomingEdges size equals: 1. 
	self assert: (RTGroup with: e2) outgoingEdges size equals: 0.
	