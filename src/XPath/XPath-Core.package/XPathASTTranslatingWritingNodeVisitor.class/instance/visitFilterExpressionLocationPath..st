visiting - location paths
visitFilterExpressionLocationPath: aFilterExpressionLocationPath
	self
		emit: $(;
		emitStartGroupingsForLocationPath: aFilterExpressionLocationPath.
	aFilterExpressionLocationPath expression acceptNodeVisitor: self.
	self
		emitAll: ' asXPathFilterExpressionLocationPathRoot';
		visitLocationPath: aFilterExpressionLocationPath;
		emit: $).
	^ aFilterExpressionLocationPath.