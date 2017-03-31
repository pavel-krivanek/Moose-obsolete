tests
testCycles
	traverser 
		on: graph startWith: 1; 
		run.
	self 
		assert: traverser objectsTraversed 
		equals: { 1 . 2 . 3} asSet