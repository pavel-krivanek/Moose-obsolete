testing-literals-integer
testIntegerLiteral4
	super testIntegerLiteral4.
	self assert: result class equals: PJIntegerLiteralNode.
	self assert: result literalValue equals: 4294967296.
	self assert: result isLong