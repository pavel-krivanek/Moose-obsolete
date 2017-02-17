visitor-doubleDispatching
visitIfStatementNode: anIfStatementNode

	self visitNode: anIfStatementNode condition.
	self visitNode: anIfStatementNode thenPart.
	self visitNode: anIfStatementNode elsePart