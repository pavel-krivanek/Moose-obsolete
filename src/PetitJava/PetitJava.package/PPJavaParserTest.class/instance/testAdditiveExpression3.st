testing-literals
testAdditiveExpression3
	super testAdditiveExpression3.
	self assert: result class equals: PJInfixOperationNode.
	
	self assert: result left left left class equals: PJIntegerLiteralNode.
	self assert: result left left left literalValue equals: 4.
	
	self assert: result left left right class equals: PJIntegerLiteralNode.
	self assert: result left left right literalValue equals: 8.
	self assert: result left left operator equals: #+.
	
	self assert: result left right class equals: PJIntegerLiteralNode.
	self assert: result left right literalValue equals: 2.
	self assert: result left operator equals: #-.
	
	self assert: result right class equals: PJIntegerLiteralNode.
	self assert: result right literalValue equals: 9.
	self assert: result operator equals: #+.
	
