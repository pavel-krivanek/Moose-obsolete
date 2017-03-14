grammar-classes-method
methodNotConstructorDeclaration 

		^ super methodNotConstructorDeclaration ==> [:nodes |
			| methodDeclarationNode |
			
			methodDeclarationNode := PJMethodDeclarationNode named: nodes fourth name.
			methodDeclarationNode modifiers: nodes first.
			methodDeclarationNode returnType: nodes third.
			methodDeclarationNode body: (nodes at: 8).
			methodDeclarationNode parameters: nodes fifth.
			methodDeclarationNode   
	]

	"Modified: / 21-04-2015 / 15:52:27 / Jan Vrany <jan.vrany@fit.cvut.cz>"