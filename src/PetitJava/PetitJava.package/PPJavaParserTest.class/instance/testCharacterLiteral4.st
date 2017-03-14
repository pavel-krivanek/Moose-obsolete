as yet unclassified
testCharacterLiteral4
	super testCharacterLiteral4.
	self assert: result class equals: PJCharacterLiteralNode.
	self assert: result literalValue equals: '\\'