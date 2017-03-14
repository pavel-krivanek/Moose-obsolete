handling - literals
handleStringLiteral: aString
	self pushExpressionNode:
		(XPathASTStringLiteralNode string: aString)