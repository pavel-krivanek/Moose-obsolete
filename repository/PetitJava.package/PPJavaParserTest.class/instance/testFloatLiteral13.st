testing
testFloatLiteral13
	super testFloatLiteral13.
	self assert: result class equals: PJFloatLiteralNode.
	self assert: result literalValue equals: '1e137'.
	self assert: result isFloat not.