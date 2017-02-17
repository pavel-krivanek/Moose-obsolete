as yet unclassified
testCharacterLiteral8
	super testCharacterLiteral8.
	self assert: result class equals: PJCharacterLiteralNode.
	self assert: result literalValue equals:  '\177'