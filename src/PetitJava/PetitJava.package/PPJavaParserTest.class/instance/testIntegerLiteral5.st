testing-literals-integer
testIntegerLiteral5
	super testIntegerLiteral5.
	self assert: result class equals: PJIntegerLiteralNode.
	self assert: result literalValue equals: 2147483648.
	self assert: result isLong