testing-literals
testStringLiteral3
	super testStringLiteral3.
	self assert: result class equals: PJStringLiteralNode.
	self assert: result literalValue equals: 'This is a Java string'