tests
testGraphStartingWithNil
	| nodes edges traverser |

	nodes := OrderedCollection new.
	edges := OrderedCollection new.
	
	traverser := DeepTraverser new 
		onNodeAction: [ :n | nodes add: n ];
		onEdgeAction: [ :f :t | edges add: (f -> t) ];
		onNodeTraverse: [ :n | graph at: n ifAbsent: [ nil ] ];
		on: graph startWithout: nil;
		run.
	
	self assert: nodes = { } asOrderedCollection.
	self assert: edges = { } asOrderedCollection