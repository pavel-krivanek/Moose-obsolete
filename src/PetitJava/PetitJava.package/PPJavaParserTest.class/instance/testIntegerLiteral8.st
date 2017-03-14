testing-literals-integer
testIntegerLiteral8
	super testIntegerLiteral8.
	self assert: result class equals: PJIntegerLiteralNode.
	self assert: result literalValue equals: 250.
	self assert: result isLong not