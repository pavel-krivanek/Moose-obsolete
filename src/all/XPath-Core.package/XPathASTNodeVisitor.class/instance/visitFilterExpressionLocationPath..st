visiting - location paths
visitFilterExpressionLocationPath: aFilterExpressionLocationPath
	^ self
		visitNodeWithExpression: aFilterExpressionLocationPath;
		visitLocationPath: aFilterExpressionLocationPath