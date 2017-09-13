tests
testAddEdge
	| source target edge |
	source := self elementInstance.
	target := self elementInstance.
	edge := OPUmlEdge new.
	edge source: source.
	edge target: target.
	self assertCollection: source sourceEdges hasSameElements: {edge}.
	self assertCollection: target targetEdges hasSameElements: {edge}.
	self assert: source targetEdges isEmpty.
	self assert: target sourceEdges isEmpty.
	self assert: edge source equals: source.
	self assert: edge target equals: target