visitor-doubleDispatching
visitVariableDeclaratorNode: aVariableDeclaratorNode
	self visitNode: aVariableDeclaratorNode variable.
	self visitNode: aVariableDeclaratorNode initializer