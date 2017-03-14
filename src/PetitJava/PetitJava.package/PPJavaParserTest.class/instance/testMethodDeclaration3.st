testing
testMethodDeclaration3
	super testMethodDeclaration3.
	self assert: result class equals: PJMethodDeclarationNode.
	self assert: result body class equals: PJBlockNode