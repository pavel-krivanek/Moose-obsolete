testing-literals
testAdditiveExpression2
	super testAdditiveExpression2.
	self assert: result class equals: PJInfixOperationNode.
	self assert: result left class equals: PJIntegerLiteralNode.
	self assert: result left literalValue equals: 3.
	self assert: result operator equals: #+.
	self assert: result right class equals: PJIntegerLiteralNode.
	self assert: result right literalValue equals: 5.