examples-relations
testTraversedNodesWithoutAllInGraph4
	<gtExample>
	<description: 'no matter how many (starting) nodes are excluded from the action, the traversal remains the same'>
	
	| traverser traversedNodes nodesWithAction graph |
	graph := self graph4.
	nodesWithAction := OrderedCollection new.
	traverser := DeepTraverserWithoutAction new 
		onNodeTraverse: [ :each | self nextElementsFor: each inGraph: graph ];
		on: graph startWithoutAll: #( 0 1 2 3 4 );
		yourself.
		
	traversedNodes := traverser upToEnd.
	self assert: traversedNodes = #( 0 1 2 3 4 5 6 7 8 9 10 ) asOrderedCollection.
	nodesWithAction = #( 5 6 7 8 9 10 ) asOrderedCollection.
	
	^ traversedNodes