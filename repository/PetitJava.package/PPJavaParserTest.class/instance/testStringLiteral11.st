testing-literals
testStringLiteral11
	super testStringLiteral11.
	self assert: result class equals: PJStringLiteralNode.
	self assert: result literalValue equals: 'null'