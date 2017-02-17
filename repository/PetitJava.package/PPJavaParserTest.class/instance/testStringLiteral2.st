testing-literals
testStringLiteral2
	super testStringLiteral2.
	self assert: result class equals: PJStringLiteralNode.
	self assert: result literalValue equals: '\"'