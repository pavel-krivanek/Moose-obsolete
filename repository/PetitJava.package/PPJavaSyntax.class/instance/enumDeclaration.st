grammar-classes-enum
enumDeclaration 

	^ classModifiers ,
	   (self tokenFor: 'enum'),
	   identifier ,
	   interfaces optional,
	   enumBody