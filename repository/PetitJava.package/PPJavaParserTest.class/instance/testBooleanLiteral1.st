testing-literals
testBooleanLiteral1
	super testBooleanLiteral1.
	self assert: result class equals: PJBooleanLiteralNode.
	self assert: result booleanValue equals: true