testing
testFloatLiteral3
	super testFloatLiteral3.
	self assert: result class equals: PJFloatLiteralNode.
	self assert: result literalValue equals: '.3'.
	self assert: result isFloat