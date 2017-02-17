grammar-classes-method
methodNotConstructorDeclaration

	^ methodModifiers,
	   typeParameters optional,
	   ((self tokenFor: 'void') / type),
	   identifier,
	   formalParameters ,
	   emptySquaredParenthesis star ,
	   throws optional,
	   (block / (self tokenFor: ';'))