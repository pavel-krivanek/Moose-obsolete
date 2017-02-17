grammar-annotations
annotationTypeElementDeclaration
	
	^ annotationMethodDeclaration
	/ interfaceFieldDeclaration 
	/ normalClassDeclaration
	/ enumDeclaration 
	/ annotationTypeDeclaration 
	/ (self tokenFor: ';')