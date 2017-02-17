grammar-classes-method
initializerDeclaration 

		^ super initializerDeclaration ==> [:nodes |
			| methodDeclarationNode |
			
			methodDeclarationNode := PJMethodDeclarationNode named: '<Initializer>'.
			methodDeclarationNode modifiers: #(). "I guess it is default visibility by default"
			methodDeclarationNode returnType: 'void'.
			methodDeclarationNode body: (nodes at: 2).
			methodDeclarationNode parameters: #().
			methodDeclarationNode
	]