grammar-expressions
inclusiveOrExpression

	^ exclusiveOrExpression , 
	((self tokenFor: '|') , exclusiveOrExpression) star