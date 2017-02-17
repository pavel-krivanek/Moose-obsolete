grammar-expressions
equalityExpression

	^ instanceofExpression , 
	(((self tokenFor: '!=') / (self tokenFor: '==')) , instanceofExpression) star