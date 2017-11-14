examples-relations
testTraversedNodesWithoutStartActionInGraph4
	<gtExample>
	
	| nodesByAction traverser traversedNodes graph |
	graph := self graph4.
	
	nodesByAction := OrderedCollection new.
	traverser := DeepTraverserWithoutEdges new 
		onNodeTraverse: [ :each | self nextElementsFor: each inGraph: graph ];
		onNodeAction: [ :each | nodesByAction add: each ];
		on: graph startWithout: 0;
		yourself.
	traversedNodes := traverser upToEnd.
	
	self assert: traversedNodes = #( 0 1 2 3 4 5 6 7 8 9 10 ) asOrderedCollection.
	self assert: nodesByAction = #( 1 2 3 4 5 6 7 8 9 10 ) asOrderedCollection.
	
	^ traversedNodes 
