handling - operators
handleAdditionOperator
	self
		popAnyAdditiveExpressionNodes;
		pushBinaryOperatorNode: XPathASTAdditionExpressionNode new