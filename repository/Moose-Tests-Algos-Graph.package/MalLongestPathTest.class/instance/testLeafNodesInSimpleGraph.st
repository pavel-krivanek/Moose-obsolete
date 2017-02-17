tests
testLeafNodesInSimpleGraph
	MalGraphFixture simpleGraph: longestPath.
	longestPath computeLeafNodes.
	self assert: (longestPath leafNodes collect: #model) equals: #($c) asOrderedCollection.
