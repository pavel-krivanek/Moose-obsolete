tests
testPreviousNodesFor
	| nodes |
	MalGraphFixture complexCycleGraph2: graphReducer.
	nodes := { (graphReducer findNode: $f) . (graphReducer findNode: $g) }.
	self 
		assert: ((graphReducer previousNodesFor: nodes) 
						collect: #model as: SortedCollection) asArray
		equals: #($a $b $c)