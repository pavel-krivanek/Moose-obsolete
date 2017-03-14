testing-literals-integer
testIntegerLiteral3
	super testIntegerLiteral3.
	self assert: result class equals: PJIntegerLiteralNode.
	self assert: result literalValue equals: 511.
	self assert: result isLong