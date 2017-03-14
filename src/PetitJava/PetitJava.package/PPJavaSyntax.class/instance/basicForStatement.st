grammar-statements
basicForStatement

	^ (self tokenFor: 'for') ,
	(self tokenFor: '('),
		forInit optional, (self tokenFor: ';'),
		expression , (self tokenFor: ';'),
		expressionList optional,
	(self tokenFor: ')'),
	statement
		