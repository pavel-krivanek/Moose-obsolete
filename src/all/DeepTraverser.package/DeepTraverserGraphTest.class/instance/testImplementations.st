tests
testImplementations
	| results |
	results := DeepTraverserWithoutAction withAllSubclasses collect: [ :class |
		(class new 
			onNodeTraverse: [ :each | self nextGraphElementsFrom: each ];
			on: graph startWith: 0;
			yourself) upToEnd ].
		
	self assert: results notEmpty.
	self assert: (results allSatisfy: [ :each | each notEmpty ]).
	self assert: results asSet size = 1