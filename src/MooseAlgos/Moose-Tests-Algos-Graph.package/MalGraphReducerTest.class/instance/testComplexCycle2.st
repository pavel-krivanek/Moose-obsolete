tests
testComplexCycle2
	MalGraphFixture complexCycleGraph2: graphReducer.
	graphReducer run.
	self
		assert: graphReducer nodes size
		equals: 6.
	self
		assert: (graphReducer nodes at: 6) mergedNodes size
		equals: 4