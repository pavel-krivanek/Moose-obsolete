testing
testMethodDeclaration4
	super testMethodDeclaration4.
	self assert: result class equals: PJMethodDeclarationNode.
	self assert: result body class equals: PJBlockNode.
	self assert: result parameters size equals: 2