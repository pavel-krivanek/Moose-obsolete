grammar-expressions
additiveExpression

	^ multiplicativeExpression , 
	(( (self tokenFor: '+') / (self tokenFor: '-') ) , multiplicativeExpression ) star