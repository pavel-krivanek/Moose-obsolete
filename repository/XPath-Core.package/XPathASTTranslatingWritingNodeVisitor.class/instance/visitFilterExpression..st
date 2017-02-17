visiting - location paths
visitFilterExpression: aFilterExpression
	self emit: $(.
	super visitFilterExpression: aFilterExpression.
	self emit: $).
	^ aFilterExpression.