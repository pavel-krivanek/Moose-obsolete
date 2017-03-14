grammar-expressions
superSuffix 

	^ arguments 
	/ (	(self tokenFor: '.'), typeArguments optional ,
		identifier ,
		arguments optional)