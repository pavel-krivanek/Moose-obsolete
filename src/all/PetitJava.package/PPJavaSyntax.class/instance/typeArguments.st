grammar-classes
typeArguments 

	^ (self tokenFor: '<') , 
		(typeArgument , ((self tokenFor: ','), typeArgument) star ) , 
	(self tokenFor: '>')