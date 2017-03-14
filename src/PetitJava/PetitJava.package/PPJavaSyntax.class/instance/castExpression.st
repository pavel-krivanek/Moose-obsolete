grammar-expressions
castExpression

	^ ((self tokenFor: '('), 
			primitiveType ,
		(self tokenFor: ')'), unaryExpression )
		
	/ ((self tokenFor: '('),
			type,
		(self tokenFor: ')'), unaryExpressionNotPlusMinus )