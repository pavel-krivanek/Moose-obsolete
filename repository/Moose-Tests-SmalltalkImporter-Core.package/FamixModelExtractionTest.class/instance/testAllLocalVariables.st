tests
testAllLocalVariables
	self
		assert: self model allLocalVariables size
		equals: (self model allMethods inject: 0 into: [ :sum :each | sum + each localVariables size ]).
	self
		assert: self model allLocalVariables size
		equals: (self model allMethods flatCollect: [ :each | each localVariables ]) size