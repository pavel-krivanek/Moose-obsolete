visiting - location paths
visitFilterExpressionLocationPath: aFilterExpressionLocationPath
	self emit: $(.
	aFilterExpressionLocationPath expression acceptNodeVisitor: self.
	^ self
		emit: $);
		visitLocationPath: aFilterExpressionLocationPath.