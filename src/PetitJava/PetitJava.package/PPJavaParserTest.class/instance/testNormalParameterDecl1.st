testing
testNormalParameterDecl1
	super testNormalParameterDecl1.
	self assert: result class equals: PJParameterDeclaratorNode.
	self assert: result identifier class equals: PJIdentifierNode.
	self assert: result arrayLevel equals: 1.
	self assert: result modifiers size equals: 1