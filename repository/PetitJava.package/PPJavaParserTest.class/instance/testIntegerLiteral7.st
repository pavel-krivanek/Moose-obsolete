testing-literals-integer
testIntegerLiteral7
	super testIntegerLiteral7.
	self assert: result class equals: PJIntegerLiteralNode.
	self assert: result literalValue equals: 2.
	self assert: result isLong not