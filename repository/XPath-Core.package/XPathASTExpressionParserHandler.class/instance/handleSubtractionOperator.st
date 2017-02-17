handling - operators
handleSubtractionOperator
	self
		popAnyAdditiveExpressionNodes;
		pushBinaryOperatorNode: XPathASTSubtractionExpressionNode new