grammar-classes-method
expressionStatement 
	^ super expressionStatement ==> [ :nodes | 
			| expressionStatementNode |
			expressionStatementNode := PJExpressionStatementNode new.
			expressionStatementNode expression: nodes first.
			expressionStatementNode]