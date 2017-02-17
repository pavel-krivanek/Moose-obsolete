grammar-classes
formalParameters 

	^ (self tokenFor: '(') ,
	formalParameterDecls optional ,
	(self tokenFor: ')')