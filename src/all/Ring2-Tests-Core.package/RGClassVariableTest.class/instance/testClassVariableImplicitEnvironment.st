tests
testClassVariableImplicitEnvironment

	| classVariable |
	
	classVariable := RGClassVariable unnamed.
	self assert: (classVariable hasResolvedName not).
	self checkImplicitSingleClassEnvironmentOf: classVariable parent.
	
	classVariable := RGClassVariable named: #SomeClassVariable.
	self assert: (classVariable hasResolvedName).
	self checkImplicitSingleClassEnvironmentOf: classVariable parent.
	
	
	
