visiting - location paths
visitFilterExpression: aFilterExpression
	^ self
		visitNodeWithExpression: aFilterExpression;
		visitFilterable: aFilterExpression