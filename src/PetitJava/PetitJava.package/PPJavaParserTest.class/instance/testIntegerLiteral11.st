testing-literals-integer
testIntegerLiteral11
	super testIntegerLiteral11.
	self assert: result class equals: PJIntegerLiteralNode.
	self assert: result literalValue equals: 16711935.
	self assert: result isLong not