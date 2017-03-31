tests
testRelationAction
	| relations |
	relations := OrderedCollection new.
	traverser 
		onEdgeAction: [ :from :to | relations add: from->to ];
		on: graph startWith: 0; 
		run.
	self assert: relations size equals: 4.
	self assert: relations equals: { 0->1 . 1->2 . 1->3 . 2->3 } asOrderedCollection.
	
	