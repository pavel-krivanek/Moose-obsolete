testing
testFloatLiteral1
	super testFloatLiteral1.
	self assert: result class equals: PJFloatLiteralNode.
	self assert: result literalValue equals: '1e1'.
	self assert: result isFloat