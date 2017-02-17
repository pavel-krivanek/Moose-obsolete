handling - operators
handleGreaterThanOperator
	self
		popAnyRelationalExpressionNodes;
		pushBinaryOperatorNode: XPathASTGreaterThanExpressionNode new