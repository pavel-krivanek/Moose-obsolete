examples-relations
collectionRelations
	<gtExample>
	| relations graph |
	graph := self graph1.
	relations := OrderedCollection new.
	
	(DeepTraverser new 
		onNodeTraverse: [ :each | self nextElementsFor: each inGraph: graph ];
		onEdgeAction: [ :from :to | relations add: from->to ];
		on: graph startWith: 0; 
		yourself) run.
		
	self assert: relations size = 4.
	self assert: relations = { 0->1 . 1->2 . 1->3 . 2->3 } asOrderedCollection.
	
	^ relations