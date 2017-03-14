grammar-classes-interface
interfaceFieldDeclaration 

	^ fieldModifiers , 
	type ,
	variableDeclarators ,
	(self tokenFor: ';')