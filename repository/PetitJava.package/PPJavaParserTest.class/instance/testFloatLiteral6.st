testing
testFloatLiteral6
	super testFloatLiteral6.
	self assert: result class equals: PJFloatLiteralNode.
	self assert: result literalValue equals: '6.022137e+23'.
	self assert: result isFloat