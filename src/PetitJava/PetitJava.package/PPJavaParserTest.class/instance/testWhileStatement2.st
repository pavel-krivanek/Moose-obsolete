testing
testWhileStatement2
	super testWhileStatement2.
	self assert: result class equals: PJWhileStatementNode.
	self assert: result statement class equals: PJBlockNode