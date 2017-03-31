grammar-classes
normalClassDeclaration 

	^ classModifiers , (self tokenFor: 'class') , identifier ,
		typeParameters optional,
		jsuper optional,
		interfaces optional ,
		classBody