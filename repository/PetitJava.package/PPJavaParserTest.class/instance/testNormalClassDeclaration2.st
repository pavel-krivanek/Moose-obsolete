testing-classes
testNormalClassDeclaration2
	super testNormalClassDeclaration2.
	self assert: result class equals: PJTypeDeclarationNode.
	self assert: result simpleName = 'MyClass'.
	self assert: result methodDeclarations size = 2.
	self assert: result methodDeclarations first simpleName = '<Initializer>'.