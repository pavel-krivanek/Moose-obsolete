testing-classes
testMethodDeclaration1
	super testMethodDeclaration1.
	self assert: result class equals: PJMethodDeclarationNode.
	self assert: result body class equals: PJBlockNode