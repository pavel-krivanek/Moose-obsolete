tests
testOriginIsPresentInResult
	traverser 
		on: graph startWith: 0; 
		run.
	self 
		assert: traverser objectsTraversed 
		equals: {0 . 1 . 2 . 3} asSet