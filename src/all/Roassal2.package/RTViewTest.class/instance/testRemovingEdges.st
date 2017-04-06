edges
testRemovingEdges
	| es |
	es := RTBox elementsOn: #(1 2).
	view addAll: es.
	view add: (RTLine edgeFrom: es first to: es second).
	self assert: view numberOfEdges equals: 1. 
	
	view removeAllEdges.
	self assert: view numberOfEdges equals: 0.
	
	self assert: es first connectedEdges isEmpty.
	self assert: es second connectedEdges isEmpty.