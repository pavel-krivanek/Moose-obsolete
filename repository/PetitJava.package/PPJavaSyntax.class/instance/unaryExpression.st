grammar-expressions
unaryExpression 

	^ (((self tokenFor: '++')
		/(self tokenFor: '+')
		/(self tokenFor: '--')
		/(self tokenFor: '-')),
			unaryExpression)
	/unaryExpressionNotPlusMinus