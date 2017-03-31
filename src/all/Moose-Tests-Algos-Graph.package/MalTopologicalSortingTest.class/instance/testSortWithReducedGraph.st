tests
testSortWithReducedGraph
	| graphReducer result |
	graphReducer := MalGraphReducer new.
	MalGraphFixture complexCycleGraph2: graphReducer.
	sorter privateNodes: graphReducer run.
	
	result := sorter run collect: #model.
	
	self
		assert: (result at: 1)
		equals: $h.
	self
		assertCollection: (result at: 2)
		hasSameElements: #($e $f $d $b).
	self
		assert: (result at: 3)
		equals: $i.
	self
		assert: (result at: 4)
		equals: $a.
	self
		assert: (result at: 5)
		equals: $g. 
	self
		assert: (result at: 6)
		equals: $c