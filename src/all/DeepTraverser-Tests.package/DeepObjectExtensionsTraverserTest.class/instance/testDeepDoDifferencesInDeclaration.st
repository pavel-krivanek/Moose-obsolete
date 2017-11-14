tests
testDeepDoDifferencesInDeclaration
	| trace expectedTrace |
	
	expectedTrace := #( 0 1 2 3 ) asOrderedCollection.
	trace := OrderedCollection new.
	0 
		withDeep: [ :each | self nextGraphElementsFrom: each ]
		do: [ :each | trace add: each ].
	self assert: trace equals: expectedTrace.
	
	expectedTrace := #( 1 2 3 ) asOrderedCollection.
	trace := OrderedCollection new.
	graph 
		deep: [ :each | self nextGraphElementsFrom: each ]
		do: [ :each | trace add: each ].
	self assert: trace equals: expectedTrace.
	
	expectedTrace := #( 0 1 2 3 ) asOrderedCollection.
	trace := OrderedCollection new.
	graph 
		withDeep: [ :each | self nextGraphElementsFrom: each ]
		do: [ :each | trace add: each ].
	self assert: trace equals: expectedTrace.
	
	expectedTrace := #( 0 1 2 3 ) asOrderedCollection.
	trace := OrderedCollection new.
	(DeepTraverserWithoutEdges new 
		onNodeTraverse: [ :each | self nextGraphElementsFrom: each ];
		onNodeAction: [ :each | trace add: each ];
		on: graph startWith: 0;
		yourself) run.
	self assert: trace equals: expectedTrace.