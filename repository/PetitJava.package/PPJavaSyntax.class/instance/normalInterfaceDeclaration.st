grammar-classes-interface
normalInterfaceDeclaration

	^ interfaceModifiers , 
	(self tokenFor: 'interface') , 
	identifier , 
	typeParameters optional , 
	((self tokenFor: 'extends') , typeList ) optional ,
	interfaceBody