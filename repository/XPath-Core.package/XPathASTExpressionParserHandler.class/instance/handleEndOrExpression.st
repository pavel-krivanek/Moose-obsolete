handling - operators
handleEndOrExpression
	self
		popAnyOrExpressionNodes;
		popOperatorNode "pop the or expression grouping null node"