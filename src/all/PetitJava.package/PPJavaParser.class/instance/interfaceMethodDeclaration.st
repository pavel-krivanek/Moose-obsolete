grammar-classes-method
interfaceMethodDeclaration 

		^ super methodNotConstructorDeclaration ==> [:nodes |
			| methodDeclarationNode |
			
			methodDeclarationNode := PJMethodDeclarationNode named: nodes fourth name.
			methodDeclarationNode modifiers: nodes first.
			methodDeclarationNode returnType: nodes third.
			methodDeclarationNode body: (nodes at: 8).
			methodDeclarationNode parameters: nodes fifth.
			methodDeclarationNode
	]