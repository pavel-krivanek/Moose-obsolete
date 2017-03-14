testing-literals
testLocalVariableDeclarationStatement1
	super testLocalVariableDeclarationStatement1.
	self assert: result class equals: PJLocalVariableDeclarationStatementNode.
	self assert: result type notNil.
	self assert: result declarators size equals: 1.