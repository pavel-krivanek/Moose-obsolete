visitor-doubleDispatching
visitWhileStatementNode: aWhileStatementNode

	self visitNode: aWhileStatementNode expression.
	self visitNode: aWhileStatementNode statement