testing
testFloatLiteral8
	super testFloatLiteral8.
	self assert: result class equals: PJFloatLiteralNode.
	self assert: result literalValue equals: '2.'.
	self assert: result isFloat not.