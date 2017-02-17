private-utils
createExample: aCompiledMethod
	^ self exampleClass new
		initializeFromMethod: aCompiledMethod usingFactory: self;
		yourself