grammar-statements
doStatement

	^(self tokenFor: 'do') , statement ,
	(self tokenFor: 'while') , parExpression ,
	(self tokenFor: ';')