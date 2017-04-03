visiting - operators
visitBinaryOperatorExpression: aBinaryOperatorExpression
	self emit: $(.
	aBinaryOperatorExpression expression acceptNodeVisitor: self.
	self
		emitSpace;
		emitOperatorName: aBinaryOperatorExpression operatorName;
		emitSpace.
	aBinaryOperatorExpression otherExpression acceptNodeVisitor: self.
	self emit: $).
	^ aBinaryOperatorExpression.