grammar-expressions
conditionalOrExpression 

	^conditionalAndExpression ,
	((self tokenFor: '||'), conditionalAndExpression ) star