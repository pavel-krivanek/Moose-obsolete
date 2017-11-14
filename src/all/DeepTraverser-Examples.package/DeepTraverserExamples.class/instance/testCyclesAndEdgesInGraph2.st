examples-relations
testCyclesAndEdgesInGraph2
	<gtExample>

	| nodes edges traverser graph |
	graph := self graph2.
	nodes := OrderedCollection new.
	edges := OrderedCollection new.
	
	traverser := DeepTraverser new 
		onNodeAction: [ :node | nodes add: node ];
		onEdgeAction: [ :from :to | edges add: (from -> to) ];
		onNodeTraverse: [ :each | self nextElementsFor: each inGraph: graph ];
		on: graph startWith: 0;
		run.
	
	self assert: nodes = { 0. 4. 1. 5. 2. 3 } asOrderedCollection.
	self assert: edges = { 0->4. 4->4. 0->1. 1->4. 4->5. 1->2. 2->4. 2->3. 3->4. } asOrderedCollection.
	
	^ traverser