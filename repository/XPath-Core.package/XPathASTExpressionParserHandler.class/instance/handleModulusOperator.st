handling - operators
handleModulusOperator
	self
		popAnyMultiplicativeExpressionNodes;
		pushBinaryOperatorNode: XPathASTModulusExpressionNode new