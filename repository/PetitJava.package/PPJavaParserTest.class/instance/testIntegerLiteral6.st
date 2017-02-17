testing-literals-integer
testIntegerLiteral6
	super testIntegerLiteral6.
	self assert: result class equals: PJIntegerLiteralNode.
	self assert: result literalValue equals: 49328.
	self assert: result isLong