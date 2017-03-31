grammar-classes-interface
interfaceMethodDeclaration 

	^ methodModifiers ,
	typeParameters optional,
	((self tokenFor: 'void') / type) ,
	identifier ,
	formalParameters ,
	emptySquaredParenthesis star ,
	throws optional ,
	(self tokenFor: ';')