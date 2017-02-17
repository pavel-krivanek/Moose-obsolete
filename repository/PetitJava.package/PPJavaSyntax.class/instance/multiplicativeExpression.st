grammar-expressions
multiplicativeExpression

	^ unaryExpression , 
	(( (self tokenFor: '*') 
	   / (self tokenFor: '/') 
	   / (self tokenFor: '%') ) , unaryExpression ) star