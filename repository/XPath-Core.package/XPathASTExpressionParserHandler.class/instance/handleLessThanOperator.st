handling - operators
handleLessThanOperator
	self
		popAnyRelationalExpressionNodes;
		pushBinaryOperatorNode: XPathASTLessThanExpressionNode new