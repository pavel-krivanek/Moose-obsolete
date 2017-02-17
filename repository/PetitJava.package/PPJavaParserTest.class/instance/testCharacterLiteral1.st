as yet unclassified
testCharacterLiteral1
	super testCharacterLiteral1.
	self assert: result class equals: PJCharacterLiteralNode.
	self assert: result literalValue equals: 'a'