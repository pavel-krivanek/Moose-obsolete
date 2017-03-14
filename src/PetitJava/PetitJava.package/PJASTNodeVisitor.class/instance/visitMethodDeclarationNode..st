visitor-doubleDispatching
visitMethodDeclarationNode: aMethodDeclarationNode
	self visitNode: aMethodDeclarationNode returnType.
	self visitNode: aMethodDeclarationNode simpleName.
	self visitNode: aMethodDeclarationNode block