testing-literals
testFormalParameters1
	super testFormalParameters1.
	self assert: (result isKindOf: Collection).
	self assert: result size equals: 2