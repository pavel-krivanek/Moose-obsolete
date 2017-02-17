testing-literals-integer
testIntegerLiteral10
	super testIntegerLiteral10.
	self assert: result class equals: PJIntegerLiteralNode.
	self assert: result literalValue equals: 1996.
	self assert: result isLong not