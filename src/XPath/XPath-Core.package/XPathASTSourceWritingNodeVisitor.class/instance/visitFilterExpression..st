visiting - location paths
visitFilterExpression: aFilterExpression
	self emit: $(.
	aFilterExpression expression acceptNodeVisitor: self.
	^ self
		emit: $);
		visitFilterable: aFilterExpression.