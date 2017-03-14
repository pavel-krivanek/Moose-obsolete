testing-classes
testNormalInterfaceDeclaration1
	super testNormalInterfaceDeclaration1.
	self assert: result class equals: PJTypeDeclarationNode.
	self assert: result simpleName = 'MyInterface'.
	self assert: result methodDeclarations size = 1.
	self assert: result methodDeclarations first simpleName = 'foo'.