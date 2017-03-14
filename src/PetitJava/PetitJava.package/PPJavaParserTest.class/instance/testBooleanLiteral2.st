testing-literals
testBooleanLiteral2
	super testBooleanLiteral2.
	self assert: result class equals: PJBooleanLiteralNode.
	self assert: result booleanValue equals: false