grammar-classes
normalInterfaceDeclaration
	^ super normalInterfaceDeclaration ==> [ :nodes | 
		PJTypeDeclarationNode new
			modifiers: nodes first;
			simpleName: nodes third name;
			methodDeclarations: nodes sixth second;
			"TODO"
			yourself.
	]