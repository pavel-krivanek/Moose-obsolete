tests
testMergedNodesNotReferencedInPreviousNodes
	MalGraphFixture complexCycleGraph2: graphReducer.
	graphReducer run.

	self 
		assertNodes: (graphReducer nodes flatCollect: #previousNodes) 
		doesNotInclude: (self mergedNodesIn: graphReducer nodes)
