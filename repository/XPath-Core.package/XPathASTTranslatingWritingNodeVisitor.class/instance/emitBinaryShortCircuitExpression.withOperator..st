private
emitBinaryShortCircuitExpression: aBinaryExpression withOperator: aSelectorString
	self emit: $(.
	(aBinaryExpression expression
		acceptNodeVisitor: self;
		type) isBooleanValueType
		ifFalse: [self emitBooleanConversion].
	self
		emitSpace;
		emitAll: aSelectorString;
		emit: $[.
	(aBinaryExpression otherExpression
		acceptNodeVisitor: self;
		type) isBooleanValueType
		ifFalse: [self emitBooleanConversion].
	self emitAll: '])'.
	^ aBinaryExpression.