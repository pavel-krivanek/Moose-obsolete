handling - operators
handleEqualsOperator
	self
		popAnyEqualityExpressionNodes;
		pushBinaryOperatorNode: XPathASTEqualsExpressionNode new