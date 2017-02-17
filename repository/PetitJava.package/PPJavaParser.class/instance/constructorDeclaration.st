grammar-classes-method
constructorDeclaration 

		^ super constructorDeclaration ==> [:nodes |
				|constructor|
				
				constructor := PJConstructorDeclarationNode named: nodes third name.
				constructor
						statements: (nodes at: 8);
						modifiers: nodes first;
						returnType: nodes second;
						parameters: nodes fourth.
				constructor]

	"Modified: / 21-04-2015 / 15:52:44 / Jan Vrany <jan.vrany@fit.cvut.cz>"