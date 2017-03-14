as yet unclassified
testCharacterLiteral5
	super testCharacterLiteral5.
	self assert: result class equals: PJCharacterLiteralNode.
	self assert: result literalValue equals: '\'''