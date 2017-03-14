running
setUp
	super setUp.
	
	traverser := DeepTraverser new 
		onNodeTraverse: [ :each | graph at: each ifAbsent: [{ }] ];
		yourself