grammar
compilationUnit 

	^ (annotations optional, packageDeclaration) optional , importDeclaration star , typeDeclaration plus