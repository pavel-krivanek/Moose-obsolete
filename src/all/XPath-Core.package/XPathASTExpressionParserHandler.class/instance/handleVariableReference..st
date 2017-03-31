handling - variables
handleVariableReference: aName
	self pushExpressionNode:
		(XPathASTVariableReferenceNode name: aName)