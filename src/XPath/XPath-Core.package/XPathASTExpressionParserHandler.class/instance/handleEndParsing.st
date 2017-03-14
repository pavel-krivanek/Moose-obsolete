handling
handleEndParsing
	self parsingResult:
		(XPathASTExpressionRootNode expression: self popExpressionNode)