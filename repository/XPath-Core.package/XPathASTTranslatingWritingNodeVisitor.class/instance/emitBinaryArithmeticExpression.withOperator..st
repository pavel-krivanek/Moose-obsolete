private
emitBinaryArithmeticExpression: aBinaryExpression withOperator: aSelectorString
	self emit: $(.
	(aBinaryExpression expression
		acceptNodeVisitor: self;
		type) isNumberValueType
		ifFalse: [self emitNumberConversion].
	self
		emitSpace;
		emitAll: aSelectorString.
	(aBinaryExpression otherExpression
		acceptNodeVisitor: self;
		type) isNumberValueType
		ifFalse: [self emitNumberConversion].
	self emit: $).
	^ aBinaryExpression.