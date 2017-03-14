tests
testAllImplicitVariablesAreStoredInTheModel
	self 
		assert: (self model allMethods flatCollect: #implicitVariables) size 
		equals: self model allImplicitVariables size