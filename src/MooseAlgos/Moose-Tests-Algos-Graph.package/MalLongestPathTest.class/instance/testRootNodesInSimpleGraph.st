tests
testRootNodesInSimpleGraph
	MalGraphFixture simpleGraph: longestPath.
	longestPath computeRootNodes.
	self assert: (longestPath rootNodes collect: #model) equals: #($a $d) asOrderedCollection 