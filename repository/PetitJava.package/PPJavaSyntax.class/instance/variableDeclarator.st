grammar-classes
variableDeclarator 

	^ identifier ,
	((self tokenFor: '[') , (self tokenFor: ']')) star ,
	((self tokenFor: '=') , variableInitializer) optional