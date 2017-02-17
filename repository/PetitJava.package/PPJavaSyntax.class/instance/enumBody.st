grammar-classes-enum
enumBody 

	^ (self tokenFor: '{') ,
		enumConstants optional ,
		(self tokenFor: ',') optional ,
		enumBodyDeclarations optional ,
		(self tokenFor: '}')