handling - functions
handleStartFunctionCall: aFunctionName
	self pushOperatorNode:
		(XPathASTFunctionCallNode name: aFunctionName)