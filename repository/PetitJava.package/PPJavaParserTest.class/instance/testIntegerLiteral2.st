testing-literals-integer
testIntegerLiteral2
	super testIntegerLiteral2.
	self assert: result class equals: PJIntegerLiteralNode.
	self assert: result literalValue equals: 0.
	self assert: result isLong