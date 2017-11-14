examples-relations
testTraversedNodesWithStartInGraph6
	<gtExample>
	
	| traverser traversedNodes nodesWithAction edgesWithAction graph |
	graph := self graph6.
	nodesWithAction := OrderedCollection new.
	edgesWithAction := OrderedCollection new.
	
	traverser := DeepTraverser new 
		onNodeTraverse: [ :each | self nextElementsFor: each inGraph: graph ];
		onNodeAction: [ :node | nodesWithAction add: node ];
		onEdgeAction: [ :from :to | edgesWithAction add: (from -> to) ];
		on: graph startWithAll: #( 0 1 2 );
		yourself.
	
	traversedNodes := traverser upToEnd.
	
	self assert: traversedNodes = nodesWithAction.
	self assert: traversedNodes = { 0. 1. 2. 3. 4. 5. 6. 7. 8. 9. 10. 11. 12. 13. } asOrderedCollection.
	
	self assert: edgesWithAction = { 0->3. 0->4. 3->4. 4->1. 4->0. 1->5. 5->4. 5->2. 2->6. 5->6. 3->7. 3->8. 8->8. 8->7. 4->9. 5->9. 8->9. 9->9. 5->10. 10->9. 10->5. 10->0. 10->1. 10->2. 5->11. 11->6. 6->12. 6->13 } asOrderedCollection.
	^ traverser
	