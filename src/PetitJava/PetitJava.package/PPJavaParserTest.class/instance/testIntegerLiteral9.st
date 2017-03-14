testing-literals-integer
testIntegerLiteral9
	super testIntegerLiteral9.
	self assert: result class equals: PJIntegerLiteralNode.
	self assert: result literalValue equals: 3671771902.
	self assert: result isLong not