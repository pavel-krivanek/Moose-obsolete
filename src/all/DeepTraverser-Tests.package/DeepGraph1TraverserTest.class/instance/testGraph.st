tests
testGraph
	| nodes edges traverser |

	nodes := OrderedCollection new.
	edges := OrderedCollection new.
	
	traverser := DeepTraverser new 
		onNodeAction: [ :n | nodes add: n ];
		onEdgeAction: [ :f :t | edges add: (f -> t) ];
		onNodeTraverse: [ :n | graph at: n ifAbsent: [ nil ] ];
		on: graph startWith: 0;
		run.
	
	self assert: nodes = { 0. 4. 1. 5. 2. 3 } asOrderedCollection.
	self assert: edges = { 0->4. 4->4. 0->1. 1->4. 4->5. 1->2. 2->4. 2->3. 3->4. } asOrderedCollection