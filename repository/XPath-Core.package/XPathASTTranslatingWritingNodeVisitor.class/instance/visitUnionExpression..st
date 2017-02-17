visiting - operators
visitUnionExpression: aUnionExpression
	self emit: $(.
	(aUnionExpression expression
		acceptNodeVisitor: self;
		type) isNodeSetValueType
		ifFalse: [self emitUnionableConversion].
	self emit: $|.
	(aUnionExpression otherExpression
		acceptNodeVisitor: self;
		type) isNodeSetValueType
		ifFalse: [self emitUnionableConversion].
	self emit: $).
	^ aUnionExpression.