testing-classes
testMethodDeclaration2
	super testMethodDeclaration2.
	self assert: result class equals: PJConstructorDeclarationNode.
	self assert: result statements isEmpty