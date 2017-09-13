tests
testDescriptions
	| container |
	container := controller magritteDescription.
	self assert: (container anySatisfy: [ :each | each label = 'Name' ]).
	self assert: (container anySatisfy: [ :each | each label = 'Is Derived' ]).