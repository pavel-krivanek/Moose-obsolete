testing-literals-integer
testIntegerLiteral1
	super testIntegerLiteral1.
	self assert: result class equals: PJIntegerLiteralNode.
	self assert: result literalValue equals: 0.
	self assert: result isLong not