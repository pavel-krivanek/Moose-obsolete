testing
testFloatLiteral4
	super testFloatLiteral4.
	self assert: result class equals: PJFloatLiteralNode.
	self assert: result literalValue equals: '0'.
	self assert: result isFloat