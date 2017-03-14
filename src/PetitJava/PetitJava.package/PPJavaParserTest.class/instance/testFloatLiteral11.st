testing
testFloatLiteral11
	super testFloatLiteral11.
	self assert: result class equals: PJFloatLiteralNode.
	self assert: result literalValue equals: '3.14'.
	self assert: result isFloat not.