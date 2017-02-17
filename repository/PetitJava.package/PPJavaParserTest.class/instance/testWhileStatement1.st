testing
testWhileStatement1
	super testWhileStatement1.
	self assert: result class equals: PJWhileStatementNode.
	self assert: result expression class equals: PJBooleanLiteralNode.