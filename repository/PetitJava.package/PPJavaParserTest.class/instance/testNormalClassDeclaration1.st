testing-classes
testNormalClassDeclaration1
	super testNormalClassDeclaration1.
	self assert: result class equals: PJTypeDeclarationNode.
	self assert: result simpleName = 'MyClass'.
	self assert: result methodDeclarations size = 1.
	self assert: result methodDeclarations first simpleName = 'foo'.