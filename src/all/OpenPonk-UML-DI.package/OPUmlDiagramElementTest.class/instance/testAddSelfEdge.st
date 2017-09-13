tests
testAddSelfEdge
	| edge |
	edge := OPUmlEdge new.
	edge source: element.
	edge target: element.
	self assert: element sourceEdges asArray equals: {edge}.
	self assert: element targetEdges asArray equals: {edge}.
	self assert: edge source equals: element.
	self assert: edge target equals: element