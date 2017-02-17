tests
testShouldImportMethodBodyBasedOnMaximum
	
	| context |
	context :=MooseImportingContext new.
	context importMaximum.
	
	self assert: (context shouldImportMethodBody).