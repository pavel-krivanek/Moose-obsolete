grammar-classes
classBodyDeclaration 

	^ (self tokenFor: ';')
	/ initializerDeclaration
	/ fieldDeclaration
	/ methodDeclaration
	/ classDeclaration 
	/ interfaceDeclaration 
	