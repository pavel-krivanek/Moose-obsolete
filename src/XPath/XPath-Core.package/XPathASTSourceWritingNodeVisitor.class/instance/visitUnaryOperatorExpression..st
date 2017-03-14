visiting - operators
visitUnaryOperatorExpression: aUnaryOperatorExpression
	self
		emitAll: aUnaryOperatorExpression operatorName;
		emit: $(.
	super visitUnaryOperatorExpression: aUnaryOperatorExpression.
	self emit: $).
	^ aUnaryOperatorExpression.