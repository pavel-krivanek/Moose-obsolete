grammar-annotations
annotationTypeDeclaration 

	^ interfaceModifiers , (self tokenFor: '@'),
	(self tokenFor: 'interface') ,
	identifier ,
	annotationTypeBody