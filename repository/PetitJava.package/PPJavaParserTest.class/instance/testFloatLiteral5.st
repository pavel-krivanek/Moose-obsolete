testing
testFloatLiteral5
	super testFloatLiteral5.
	self assert: result class equals: PJFloatLiteralNode.
	self assert: result literalValue equals: '3.14'.
	self assert: result isFloat