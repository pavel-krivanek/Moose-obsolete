handling - location paths
handleEndFilterExpression
	self topOperatorNode isFilterExpression
		ifTrue: [self pushExpressionNode: self popOperatorNode]