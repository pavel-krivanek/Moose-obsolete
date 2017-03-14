testing-literals
testNullLiteral1

	super testNullLiteral1.
	
	self assert: result class equals: PJNullLiteralNode .
	self assert: result literalValue equals: 'null'