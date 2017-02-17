tests
testNoCycle
	MalGraphFixture complexCycleGraph2: graphReducer.
	graphReducer run.
	graphReducer nodes do:
		[ :node | 
		self 
			deny: ((node nextNodes includes: node) or: [ node previousNodes includes: node ])
			description: node asString, ' node is in cycle!' ]