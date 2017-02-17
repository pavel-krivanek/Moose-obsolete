tests
testNextNodesFor
	| nodes |
	MalGraphFixture complexCycleGraph2: graphReducer.
	nodes := { (graphReducer findNode: $f) . (graphReducer findNode: $g) }.
	self 
		assert: ((graphReducer nextNodesFor: nodes) 
						collect: #model as: SortedCollection) asArray
		equals: #($a $b $d $e $i)