tests
testMergedNodesNotReferencedInNextNodes
	MalGraphFixture complexCycleGraph2: graphReducer.
	graphReducer run.

	self 
		assertNodes: (graphReducer nodes flatCollect: #nextNodes) 
		doesNotInclude: (self mergedNodesIn: graphReducer nodes)