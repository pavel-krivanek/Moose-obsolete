grammar-expressions
conditionalAndExpression 

	^inclusiveOrExpression ,
	((self tokenFor: '&&'), inclusiveOrExpression ) star