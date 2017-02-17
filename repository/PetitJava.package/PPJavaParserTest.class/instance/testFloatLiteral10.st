testing
testFloatLiteral10
	super testFloatLiteral10.
	self assert: result class equals: PJFloatLiteralNode.
	self assert: result literalValue equals: '0.0'.
	self assert: result isFloat not.