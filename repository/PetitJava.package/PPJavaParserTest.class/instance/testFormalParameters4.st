testing-literals
testFormalParameters4
	super testFormalParameters4.
	self assert: (result isKindOf: Collection).
	self assert: result size equals: 4