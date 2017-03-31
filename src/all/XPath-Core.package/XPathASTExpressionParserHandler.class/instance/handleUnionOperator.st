handling - operators
handleUnionOperator
	self
		popAnyUnionExpressionNodes;
		pushBinaryOperatorNode: XPathASTUnionExpressionNode new