grammar-statements
synchronizedStatement 

	^ (self tokenFor: 'synchronized') , parExpression , block