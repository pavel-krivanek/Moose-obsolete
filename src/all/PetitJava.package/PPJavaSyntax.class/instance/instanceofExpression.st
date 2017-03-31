grammar-expressions
instanceofExpression

	^  relationalExpression , 
	((self tokenFor: 'instanceof') , type) optional