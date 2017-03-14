grammar-classes-interface
interfaceBodyDeclaration 

	^ interfaceFieldDeclaration
	/ interfaceMethodDeclaration
	/ interfaceDeclaration 
	/ classDeclaration 
	/ (self tokenFor: ';')