handling - literals
handleNumberLiteral: anIntegerOrFloatString
	self pushExpressionNode:
		(XPathASTNumberLiteralNode number: anIntegerOrFloatString asXPathNumber)