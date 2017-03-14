as yet unclassified
testCharacterLiteral3
	super testCharacterLiteral3.
	self assert: result class equals: PJCharacterLiteralNode.
	self assert: result literalValue equals: '\t'