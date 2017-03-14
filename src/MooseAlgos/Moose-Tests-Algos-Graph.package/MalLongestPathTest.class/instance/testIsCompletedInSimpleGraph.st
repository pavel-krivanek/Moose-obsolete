tests
testIsCompletedInSimpleGraph
	MalGraphFixture simpleGraph: longestPath.
	longestPath computeLeafNodes.
	self deny: longestPath isCompleted