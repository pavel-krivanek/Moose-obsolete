testing-literals
testReturnStatement1
	super testReturnStatement1.
	self assert: result class equals: PJReturnStatementNode.
	self assert: (result expression isKindOf: PJExpressionNode)