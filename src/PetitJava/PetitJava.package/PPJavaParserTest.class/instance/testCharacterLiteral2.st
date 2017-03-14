as yet unclassified
testCharacterLiteral2
	super testCharacterLiteral2.
	self assert: result class equals: PJCharacterLiteralNode.
	self assert: result literalValue equals: '%'