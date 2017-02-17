testing-literals
testReturnStatement2
	super testReturnStatement2.
	self assert: result class equals: PJReturnStatementNode.
	self assert: result expression isNil