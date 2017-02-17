grammar-classes-method
constructorDeclaration

	^ constructorModifiers optional , 
	   typeParameters optional , 
	   identifier,
	   formalParameters ,
	   throws optional , 
	   (self tokenFor: '{' ) , 
			explicitConstructorInvocation optional ,
			blockStatement star ,
	   (self tokenFor: '}')
	