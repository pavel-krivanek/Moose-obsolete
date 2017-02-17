grammar-classes
annotationTypeDeclaration
	^ super annotationTypeDeclaration ==> [ :nodes | 
		PJTypeDeclarationNode new
			simpleName: nodes fourth name;
			"	
				actually, annotationType does not allow for methods declarations,
				Type declarations should be updated/refactored to support for interfaces/annotations/classes/enums...
			"
			methodDeclarations: nodes fifth second;
			yourself.
	]