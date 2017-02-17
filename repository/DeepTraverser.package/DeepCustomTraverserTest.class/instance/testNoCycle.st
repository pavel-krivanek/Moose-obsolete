tests
testNoCycle
	traverser 
		on: graph startWith: 4; 
		run.
	self 
		assert: traverser objectsTraversed 
		equals: {4 . 3} asSet