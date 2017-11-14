examples-relations
testTraversedNodesWithoutStartInGraph4
	<gtExample>
	
	| traverser traversedNodes graph |
	graph := self graph4.
	traverser := DeepTraverserWithoutAction new 
		onNodeTraverse: [ :each | self nextElementsFor: each inGraph: graph ];
		on: graph startWithout: 0;
		yourself.
		
	traversedNodes := traverser upToEnd.
	self assert: traversedNodes = #( 0 1 2 3 4 5 6 7 8 9 10 ) asOrderedCollection.
	
	^ traversedNodes