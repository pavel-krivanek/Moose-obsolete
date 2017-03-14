tests
testRootNodesRankIsZeroInSimpleGraph
	MalGraphFixture simpleGraph: longestPath.
	longestPath initializeRootNodes.
	self assert: (longestPath rootNodes collect: #model) equals: #($a $d) asOrderedCollection.
	self assert: (longestPath rootNodes collect: #pathWeight) equals: #(0 0) asOrderedCollection