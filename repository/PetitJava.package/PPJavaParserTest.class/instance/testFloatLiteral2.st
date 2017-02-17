testing
testFloatLiteral2
	super testFloatLiteral2.
	self assert: result class equals: PJFloatLiteralNode.
	self assert: result literalValue equals: '2.'.
	self assert: result isFloat