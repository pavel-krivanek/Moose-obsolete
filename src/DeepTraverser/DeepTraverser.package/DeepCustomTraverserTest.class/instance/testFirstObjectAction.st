tests
testFirstObjectAction
	| objects |
	objects := OrderedCollection new.
	traverser 
		onNodeAction: [ :each | objects add: each ];
		on: graph startWith: 0; 
		run.
	self assert: objects size equals: 4.
	self assert: objects equals: { 0. 1 . 2 . 3 } asOrderedCollection