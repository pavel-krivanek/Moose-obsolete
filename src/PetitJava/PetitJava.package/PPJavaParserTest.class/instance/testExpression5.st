testing-literals
testExpression5
	super testExpression5.
	self assert: result class equals: PJInfixOperationNode.
	self assert: result left class equals: PJIdentifierNode.
	self assert: result operator equals: #+=.
	self assert: result right class equals: PJIntegerLiteralNode