as yet unclassified
testGraph
	| nodesWithAction |
	self assert: (DeepTraverserWithoutAction new 
		onNodeTraverse: [ :node | self nextGraphElementsFrom: node ];
		on: graph startWith: 0;
		yourself) upToEnd = #( 0 1 2 3 4 5 6 7 8 9 10 ) asOrderedCollection.
	
	self assert: (DeepTraverserWithoutAction new 
		onNodeTraverse: [ :node | self nextGraphElementsFrom: node ];
		on: graph startWithout: 0;
		yourself) upToEnd = #( 0 1 2 3 4 5 6 7 8 9 10 ) asOrderedCollection.
	
	nodesWithAction := OrderedCollection new.
	self assert: (DeepTraverserWithoutEdges new 
		onNodeTraverse: [ :node | self nextGraphElementsFrom: node ];
		onNodeAction: [ :node | nodesWithAction add: node ];
		on: graph startWithout: 0;
		yourself) upToEnd = #( 0 1 2 3 4 5 6 7 8 9 10 ) asOrderedCollection.
	self assert: nodesWithAction = #( 1 2 3 4 5 6 7 8 9 10 ) asOrderedCollection.
	
	nodesWithAction := OrderedCollection new.
	self assert: (DeepTraverserWithoutEdges new 
		onNodeTraverse: [ :node | self nextGraphElementsFrom: node ];
		onNodeAction: [ :node | nodesWithAction add: node ];
		on: graph startWithoutAll: #( 0 1 2 3 4 );
		yourself) upToEnd = #( 0 1 2 3 4 5 6 7 8 9 10 ) asOrderedCollection.
	self assert: nodesWithAction = #( 5 6 7 8 9 10 ) asOrderedCollection.