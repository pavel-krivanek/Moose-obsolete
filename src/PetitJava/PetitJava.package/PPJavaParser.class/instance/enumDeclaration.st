grammar-classes
enumDeclaration
	^ super enumDeclaration ==> [ :nodes | 
		PJTypeDeclarationNode new
			modifiers: nodes first;
			simpleName: nodes third name;
			superInterfaceTypes: nodes fourth;
			"	
				actually, enumType does not allow for methods declarations,
				Type declarations should be updated/refactored to support for interfaces/annotations/classes/enums...
			"
			methodDeclarations: nodes fifth second;
			yourself.
	]