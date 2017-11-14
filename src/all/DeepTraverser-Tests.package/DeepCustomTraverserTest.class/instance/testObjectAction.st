tests
testObjectAction
	| objects |
	objects := OrderedCollection new.
	traverser 
		onNodeAction: [ :each | objects add: each ];
		on: graph startWithout: 0; 
		run.
	self assert: objects size equals: 3.
	self assert: objects equals: { 1 . 2 . 3 } asOrderedCollection