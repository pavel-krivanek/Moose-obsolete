testing-literals
testLocalVariableDeclarationStatement3
	super testLocalVariableDeclarationStatement3.
	self assert: result class equals: PJLocalVariableDeclarationStatementNode.
	self assert: result type notNil.
	self assert: result declarators size equals: 3.