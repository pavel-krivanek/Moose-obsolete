tests
testShouldImportMethodBody2
	
	| context |
	context :=MooseImportingContext new.
	context importImplicitVariable.

	self assert: (context shouldImportMethodBody).