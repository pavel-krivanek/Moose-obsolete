visitor-doubleDispatching
visitInfixOperationNode: anInfixOperationNode
	self visitNode: anInfixOperationNode left.
	self visitNode: anInfixOperationNode right