private-utils
createExample: aCompiledMethod
	| newExample |
	newExample := self exampleClass new.
	[ newExample initializeFromMethod: aCompiledMethod usingFactory: self ]
		on: Deprecation
		do: [ :exception | 
			newExample addProblem: (GtExampleDeprecationDetected new
				example: newExample;
				signaledException: exception; 
				yourself).
			exception resume ].
	^ newExample