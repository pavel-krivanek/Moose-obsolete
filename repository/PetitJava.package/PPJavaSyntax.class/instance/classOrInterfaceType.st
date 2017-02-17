grammar-classes
classOrInterfaceType 

	^ identifier ,
	typeArguments optional,
	((self tokenFor: '.'), identifier , typeArguments optional ) star