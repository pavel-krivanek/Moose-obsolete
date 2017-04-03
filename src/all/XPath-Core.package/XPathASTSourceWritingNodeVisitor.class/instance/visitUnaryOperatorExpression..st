visiting - operators
visitUnaryOperatorExpression: aUnaryOperatorExpression
	self
		emitOperatorName: aUnaryOperatorExpression operatorName;
		emit: $(.
	super visitUnaryOperatorExpression: aUnaryOperatorExpression.
	self emit: $).
	^ aUnaryOperatorExpression.