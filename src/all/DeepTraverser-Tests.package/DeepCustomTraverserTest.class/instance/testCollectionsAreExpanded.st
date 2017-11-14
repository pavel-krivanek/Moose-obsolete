tests
testCollectionsAreExpanded
	traverser 
		on: graph startWith: 10; 
		run.
	self 
		assert: traverser objectsTraversed 
		equals: {10 . 11} asSet