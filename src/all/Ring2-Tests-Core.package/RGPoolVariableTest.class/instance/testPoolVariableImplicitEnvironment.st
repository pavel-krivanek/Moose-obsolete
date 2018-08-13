tests
testPoolVariableImplicitEnvironment

	| poolVariable |
	
	poolVariable := RGPoolVariable unnamed.
	self assert: (poolVariable hasUnresolved: #name).
	self assert: (poolVariable parent isClass).
	self checkImplicitSingleClassEnvironmentOf: poolVariable parent.
	
	
	
	
