handling - location paths
handleStartFilterExpressionLocationPath
	self pushOperatorNode:
		(XPathASTFilterExpressionLocationPathNode expression:
			self popExpressionNode)