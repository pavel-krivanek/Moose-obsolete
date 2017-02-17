grammar
packageDeclaration 

	^ (self tokenFor: 'package') , qualifiedName , (self tokenFor: ';')