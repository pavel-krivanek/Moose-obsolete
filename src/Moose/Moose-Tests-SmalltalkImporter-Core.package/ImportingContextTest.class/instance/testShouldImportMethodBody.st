tests
testShouldImportMethodBody
	
	| context |
	context :=MooseImportingContext new.
	context importArgument.
	self assert: (context shouldImportMethodBody).