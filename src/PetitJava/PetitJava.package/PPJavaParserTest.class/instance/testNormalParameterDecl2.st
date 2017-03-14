testing
testNormalParameterDecl2
	super testNormalParameterDecl2.
	self assert: result class equals: PJParameterDeclaratorNode.
	self assert: result identifier class equals: PJIdentifierNode.
	self assert: result arrayLevel equals: 0.
	self assert: result modifiers size equals: 0