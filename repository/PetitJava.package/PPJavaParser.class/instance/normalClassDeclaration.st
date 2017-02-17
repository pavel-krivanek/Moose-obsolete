grammar-classes
normalClassDeclaration
	^ super normalClassDeclaration ==> [ :nodes | 
		PJTypeDeclarationNode new
			modifiers: nodes first;
			simpleName: nodes third name;
			methodDeclarations: nodes seventh second;
			"TODO"
			yourself.
	]