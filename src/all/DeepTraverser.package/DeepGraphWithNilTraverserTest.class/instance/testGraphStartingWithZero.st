tests
testGraphStartingWithZero
	| nodes edges traverser |

	nodes := OrderedCollection new.
	edges := OrderedCollection new.
	
	traverser := DeepTraverser new 
		onNodeAction: [ :n | nodes add: n ];
		onEdgeAction: [ :f :t | edges add: (f -> t) ];
		onNodeTraverse: [ :n | graph at: n ifAbsent: [ nil ] ];
		on: graph startWith: 0;
		run.
	
	self assert: nodes = { 0 . 1 } asOrderedCollection.
	self assert: edges = { 0->1 } asOrderedCollection