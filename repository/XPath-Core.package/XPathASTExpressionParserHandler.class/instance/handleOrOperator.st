handling - operators
handleOrOperator
	self
		popAnyOrExpressionNodes;
		pushBinaryOperatorNode: XPathASTOrExpressionNode new