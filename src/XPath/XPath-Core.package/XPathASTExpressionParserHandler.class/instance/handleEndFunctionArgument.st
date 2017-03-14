handling - functions
handleEndFunctionArgument
	self topOperatorNode addArgument:
		(XPathASTArgumentNode expression: self popExpressionNode)