testing-utilities
testFailure
	| failure |
	failure := PPFailure message: 'Error' context: PPContext new at: 3.
	self assert: failure message equals: 'Error'.
	self assert: failure position equals: 3.
	self assert: failure isPetitFailure.
	self deny: 4 isPetitFailure.
	self deny: 'foo' isPetitFailure