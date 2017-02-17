tests
testShouldComputeTypeOfAttributes
	| context |

	context :=MooseImportingContext new.
	self deny: (context shouldComputeTypeOfAttributes).
	context computeTypeOfAttributes.
	self assert: (context shouldComputeTypeOfAttributes).