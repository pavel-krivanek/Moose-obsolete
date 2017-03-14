tests
testRunIsCompletedInSimpleGraph
	MalGraphFixture simpleGraph: longestPath.
	longestPath run.
	self assert: longestPath isCompleted