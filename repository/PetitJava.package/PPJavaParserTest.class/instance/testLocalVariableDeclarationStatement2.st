testing-literals
testLocalVariableDeclarationStatement2
	super testLocalVariableDeclarationStatement2.
	self assert: result class equals: PJLocalVariableDeclarationStatementNode.
	self assert: result type notNil.
	self assert: result declarators size equals: 2.