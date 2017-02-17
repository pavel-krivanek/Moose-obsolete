testing
testFloatLiteral12
	super testFloatLiteral12.
	self assert: result class equals: PJFloatLiteralNode.
	self assert: result literalValue equals: '1e-9d'.
	self assert: result isFloat not.